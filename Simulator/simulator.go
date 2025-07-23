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

// ReplayEvent represents a single simulation event with its original timestamp and delay.
type ReplayEvent struct {
	Timestamp time.Time           // original time of the event
	Payload   *Model.ParsedRecord // actual record to be replayed
	Delay     time.Duration       // time since previous event
}

// CalculateReplayEvents builds a list of ReplayEvent from a slice of ParsedRecord,
// keeping delays between records for accurate replay.
func CalculateReplayEvents(records []*Model.ParsedRecord) ([]ReplayEvent, error) {
	if len(records) == 0 {
		return nil, nil
	}

	// Sort records by their log timestamp
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

// ReplaySpeedup adjusts the given delay based on the configured speedup factor.
func ReplaySpeedup(delay time.Duration, speedup float64) time.Duration {
	if speedup <= 0 {
		speedup = 1.0
	}
	return time.Duration(float64(delay) / speedup)
}

// SimulateReplay replays parsed records in correct time order while maintaining relative timing between them.
// The replay is adjusted using a speed factor and supports concurrent execution.
func SimulateReplay(
	records []*Model.ParsedRecord,
	sqlFormatter Formatter.Formatter,
	runner Runner.QueryRunner,
	ctx context.Context,
	overrideTable string,
	mainWG *sync.WaitGroup,
	startTime *time.Time,
) error {
	// Convert records to replayable events
	events, err := CalculateReplayEvents(records)
	if err != nil || len(events) == 0 {
		return err
	}

	// Group events by their timestamp (same-second granularity)
	grouped, orderedTimes := groupEventsByTimestamp(events)

	// Retrieve speed factor from configuration
	speed := configuration.GetSpeedFactor(configuration.GlobalConsulClient)

	var prevTimestamp time.Time
	if startTime != nil {
		prevTimestamp = *startTime
	}

	// Iterate through each group of events based on timestamp
	for i, ts := range orderedTimes {
		group := grouped[ts]
		delay := calculateDelay(i, ts, startTime, prevTimestamp)
		prevTimestamp = ts

		// Adjust delay by speedup factor and wait accordingly
		adjusted := ReplaySpeedup(delay, speed)
		expectedSendTime := time.Now().Add(adjusted)
		time.Sleep(adjusted)
		actualSendTime := time.Now()

		fmt.Printf("[%s] Sending %d events | ORIGINAL: %v ms | ADJUSTED: %v ms\n",
			actualSendTime.Format("15:04:05.000"),
			len(group),
			delay.Milliseconds(),
			adjusted.Milliseconds())

		// Launch goroutine for each event
		for _, event := range group {
			sendEventAsync(event.Payload, sqlFormatter, runner, ctx, overrideTable, mainWG, expectedSendTime, actualSendTime)
		}
	}

	return nil
}

// groupEventsByTimestamp groups ReplayEvents by their timestamp
// and returns a map along with the ordered list of timestamps.
func groupEventsByTimestamp(events []ReplayEvent) (map[time.Time][]*ReplayEvent, []time.Time) {
	grouped := make(map[time.Time][]*ReplayEvent)
	var orderedTimes []time.Time

	for _, e := range events {
		grouped[e.Timestamp] = append(grouped[e.Timestamp], &e)
	}

	for t := range grouped {
		orderedTimes = append(orderedTimes, t)
	}

	// Sort the timestamps to ensure chronological order
	sort.Slice(orderedTimes, func(i, j int) bool {
		return orderedTimes[i].Before(orderedTimes[j])
	})

	return grouped, orderedTimes
}

// calculateDelay computes the time difference between current and previous events,
// or from the provided startTime if this is the first event.
func calculateDelay(i int, current time.Time, first *time.Time, prev time.Time) time.Duration {
	if i == 0 && first != nil {
		return current.Sub(*first)
	} else if i > 0 {
		return current.Sub(prev)
	}
	return 0
}

// sendEventAsync launches a goroutine to format and run a single SQL query event.
// It also logs execution result and timing drift from the planned schedule.
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

	// Override table name if specified
	if override != "" {
		rec.Parsed.TableName = override
	}

	wg.Add(1)
	go func() {
		defer wg.Done()

		// Measure timing deviation between planned and actual execution
		drift := actual.Sub(expected)
		if drift < 0 {
			drift = -drift
		}

		// הדפסת סטייה בנפרד מהשאילתה
		fmt.Printf("Dispatching event | Expected: %s | Actual: %s | Drift: %.3f ms\n",
			expected.Format("15:04:05.000"),
			actual.Format("15:04:05.000"),
			float64(drift.Microseconds())/1000)

		// Format query
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

		// Execute the SQL query
		duration, jobID, err := runner.RunRawQuery(ctx, raw)
		if err != nil {
			fmt.Printf("Query failed: %v\n", err)
		} else {
			fmt.Printf("Query succeeded | Duration: %s | Job ID: %s\n", duration, jobID)
		}
	}()
}
