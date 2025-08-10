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
	"github.com/HadasAmar/analytics-load-tool/metrics"
	// "github.com/HadasAmar/analytics-load-tool/metrics"
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
	simStart time.Time,
	firstDriftOnce *sync.Once,
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

		// Log time drift for debugging
		drift := actualSendTime.Sub(expectedSendTime)
		if drift < 0 {
			drift = -drift
		}

		// metrics.Drift(float64(drift.Microseconds()) / 1000.0)

		fmt.Printf("[%s] Sending %d events | ORIGINAL: %v ms | ADJUSTED: %v ms | Drift: %.3f ms\n",
			actualSendTime.Format("15:04:05.000"),
			len(group),
			delay.Milliseconds(),
			adjusted.Milliseconds(),
			float64(drift.Microseconds())/1000)

		// Send each event concurrently
		for _, event := range group {
			sendEventAsync(event.Payload, sqlFormatter, runner, ctx, overrideTable, mainWG, expectedSendTime, actualSendTime, simStart, firstDriftOnce)
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
func sendEventAsync(
	rec *Model.ParsedRecord,
	formatter Formatter.Formatter,
	runner Runner.QueryRunner,
	ctx context.Context,
	override string,
	wg *sync.WaitGroup,
	expected time.Time,
	actual time.Time,
	simStart time.Time,
	firstDriftOnce *sync.Once,
) {

	// start := time.Now()
	if rec == nil || rec.Parsed == nil {
		return
	}

	// Apply override for table name if needed
	if override != "" {
		rec.Parsed.TableName = override
	}
	wg.Add(1)
	go func() {
		defer wg.Done()
		var driftTime time.Duration

		firstDriftOnce.Do(func() {
			driftTime = rec.LogTime.Sub(simStart)

		})

		atProdaction := rec.LogTime.Add(driftTime)
		metrics.ReportCustomTime("loadtool.simulated.atProduction", atProdaction)

		//A metric for tracking event timing in real time
		// metrics.Gauge("loadtool.simulated.realtime", float64(expected.UnixMilli()))

		// metrics.ReportExpectedTime("loadtool.simulated.expected", expected)
		// metrics.ReportActualTime("loadtool.simulated.actual", actual)
		// metrics.ReportDuration("loadtool.simulated.drift", actual.Sub(expected))

		// Debug print: time drift
		drift := actual.Sub(expected)
		if drift < 0 {
			drift = -drift
		}

		fmt.Printf("Dispatching event | Expected: %s | Actual: %s | Drift: %.3f ms\n",
			expected.Format("15:04:05.000"),
			actual.Format("15:04:05.000"),
			float64(drift.Microseconds())/1000)

		metrics.ReportDuration("loadtool.simulated.drift", drift)

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

		// Run the query
		duration, jobID, err := runner.RunRawQuery(ctx, raw)

		if err != nil {
			fmt.Printf("Query failed: %v\n", err)
			metrics.Client.Incr("loadtool.simulation.event_failed", nil, 1)
		} else {
			fmt.Printf("Query succeeded | Duration: %s | Job ID: %s\n", duration, jobID)
			metrics.SingleLogSuccess()
			//send metric for the time it took to send the event
			metrics.Client.Incr("loadtool.simulation.event_delivered", nil, 1)
		}
	}()
}
