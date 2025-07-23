package Simulator

import (
	"context"
	"fmt"
	"sort"
	"sync"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Model"
	"github.com/HadasAmar/analytics-load-tool/Runner"
	"github.com/HadasAmar/analytics-load-tool/configuration"
	Formatter "github.com/HadasAmar/analytics-load-tool/formatter"
)

// ReplayEvent holds event details: timestamp, payload, and delay between events.
type ReplayEvent struct {
	Timestamp time.Time
	Payload   *Model.ParsedRecord
	Delay     time.Duration
}

// CalculateReplayEvents prepares a time-sorted list of replay events with delays.
func CalculateReplayEvents(records []*Model.ParsedRecord) ([]ReplayEvent, error) {
	if len(records) == 0 {
		return nil, nil
	}
	sort.Slice(records, func(i, j int) bool {
		return records[i].LogTime.Before(records[j].LogTime)
	})

	var result []ReplayEvent
	var previous time.Time

	for i, rec := range records {
		delay := time.Duration(0)
		if i > 0 {
			delay = rec.LogTime.Sub(previous)
		}
		previous = rec.LogTime

		result = append(result, ReplayEvent{
			Timestamp: rec.LogTime,
			Payload:   rec,
			Delay:     delay,
		})
	}
	return result, nil
}

// ReplaySpeedup reduces delay based on configured speed factor.
func ReplaySpeedup(delay time.Duration, speedup float64) time.Duration {
	if speedup <= 0 {
		speedup = 1.0
	}
	return time.Duration(float64(delay) / speedup)
}

// SimulateReplay replays events in order, adjusting timing using speed factor.
func SimulateReplay(
	records []*Model.ParsedRecord,
	sqlFormatter Formatter.Formatter,
	runner Runner.QueryRunner,
	ctx context.Context,
	overrideTable string,
	mainWG *sync.WaitGroup,
	startTime *time.Time,
) error {
	events, err := CalculateReplayEvents(records)
	if err != nil || len(events) == 0 {
		return err
	}

	grouped, orderedTimes := groupEventsByTimestamp(events)
	speed := configuration.GetSpeedFactor(configuration.GlobalConsulClient)

	var prevTimestamp time.Time
	if startTime != nil {
		prevTimestamp = *startTime
	}

	for i, ts := range orderedTimes {
		group := grouped[ts]
		delay := calculateDelay(i, ts, startTime, prevTimestamp)
		prevTimestamp = ts

		adjusted := ReplaySpeedup(delay, speed)
		expectedSendTime := time.Now().Add(adjusted)
		time.Sleep(adjusted)
		actualSendTime := time.Now()

		// Calculate and print time drift
		drift := actualSendTime.Sub(expectedSendTime)
		if drift < 0 {
			drift = -drift
		}
		fmt.Printf("[%s] Sending %d events | ORIGINAL: %v ms | ADJUSTED: %v ms | Drift: %.3f ms\n",
			actualSendTime.Format("15:04:05.000"),
			len(group),
			delay.Milliseconds(),
			adjusted.Milliseconds(),
			float64(drift.Microseconds())/1000)

		// Send each event concurrently
		for _, event := range group {
			sendEventAsync(event.Payload, sqlFormatter, runner, ctx, overrideTable, mainWG, expectedSendTime, actualSendTime)
		}
	}
	return nil
}

// groupEventsByTimestamp clusters events by timestamp and returns sorted keys.
func groupEventsByTimestamp(events []ReplayEvent) (map[time.Time][]*ReplayEvent, []time.Time) {
	grouped := make(map[time.Time][]*ReplayEvent)
	var orderedTimes []time.Time

	for _, e := range events {
		grouped[e.Timestamp] = append(grouped[e.Timestamp], &e)
	}

	for t := range grouped {
		orderedTimes = append(orderedTimes, t)
	}
	sort.Slice(orderedTimes, func(i, j int) bool {
		return orderedTimes[i].Before(orderedTimes[j])
	})

	return grouped, orderedTimes
}

// calculateDelay returns the delay before the current event.
func calculateDelay(i int, current time.Time, first *time.Time, prev time.Time) time.Duration {
	if i == 0 && first != nil {
		return current.Sub(*first)
	} else if i > 0 {
		return current.Sub(prev)
	}
	return 0
}

// sendEventAsync formats and sends a SQL query in a goroutine.
// It also logs the drift between expected and actual send times.
func sendEventAsync(
	rec *Model.ParsedRecord,
	formatter Formatter.Formatter,
	runner Runner.QueryRunner,
	ctx context.Context,
	override string,
	wg *sync.WaitGroup,
	expected time.Time,
	actual time.Time,
) {
	if rec == nil || rec.Parsed == nil {
		return
	}

	// Override the table name if specified
	if override != "" {
		rec.Parsed.TableName = override
	}

	wg.Add(1)
	go func() {
		defer wg.Done()

		// // Calculate and print time drift (actual vs expected)
		// drift := actual.Sub(expected)
		// if drift < 0 {
		// 	drift = -drift
		// }
		// fmt.Printf("Dispatching event | Expected: %s | Actual: %s | Drift: %.3f ms\n",
		// 	expected.Format("15:04:05.000"),
		// 	actual.Format("15:04:05.000"),
		// 	float64(drift.Microseconds())/1000)

		// Format the SQL query
		result, err := formatter.Format(rec.Parsed)
		if err != nil {
			fmt.Printf("Format error: %v\n", err)
			return
		}

		raw, ok := result.(string)
		if !ok {
			fmt.Println("Failed to cast formatted query to string")
			return
		}

		// Run the SQL query and print results
		duration, jobID, err := runner.RunRawQuery(ctx, raw)
		if err != nil {
			fmt.Printf("Query failed: %v\n", err)
		} else {
			fmt.Printf("Query succeeded | Duration: %s | Job ID: %s\n", duration, jobID)
		}
	}()
}
