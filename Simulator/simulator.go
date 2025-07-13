package Simulator

import (
	"context"
	"fmt"
	"sort"
	"sync"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Formatter"
	"github.com/HadasAmar/analytics-load-tool/Model"
	"github.com/HadasAmar/analytics-load-tool/Runner"
	"github.com/HadasAmar/analytics-load-tool/configuration"
)

// ReplayEvent represents an event in the simulation.
type ReplayEvent struct {
	Timestamp time.Time
	Payload   *Model.ParsedRecord
	Delay     time.Duration
}

// CalculateReplayEvents returns a slice of ReplayEvent based on the provided records.
// Each event includes the timestamp, payload, and delay since the previous event.
func CalculateReplayEvents(records []*Model.ParsedRecord) ([]ReplayEvent, error) {
	if len(records) == 0 {
		return nil, nil
	}

	// Sort records by LogTime
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

		replay := ReplayEvent{
			Timestamp: rec.LogTime,
			Payload:   rec,
			Delay:     delay,
		}
		result = append(result, replay)
	}
	return result, nil
}

// ReplaySpeedup calculates the adjusted delay based on a speedup factor.
func ReplaySpeedup(delay time.Duration, speedup float64) time.Duration {
	if speedup <= 0 {
		speedup = 1.0
	}
	adjusted := time.Duration(float64(delay) / speedup)
	return adjusted
}

// SimulateReplayWithControl simulates events with delay and allows command control (pause/resume/stop)
func SimulateReplayWithControl(
	records []*Model.ParsedRecord,
	commands chan string,
	sqlFormatter Formatter.Formatter,
	runner Runner.QueryRunner,
	ctx context.Context,
	overrideTable string,
	wg *sync.WaitGroup,
) error {
	events, err := CalculateReplayEvents(records)
	if err != nil {
		return err
	}

	speed := configuration.GetSpeedFactorValue()
	paused := false

	baseTime := events[0].Timestamp
	simStart := time.Now()

	for i, event := range events {
		// חישוב זמן יעד מוחלט לפי event.Timestamp
		elapsed := event.Timestamp.Sub(baseTime)
		adjusted := ReplaySpeedup(elapsed, speed)
		targetTime := simStart.Add(adjusted)

		// המתנה מדויקת
		wait := time.Until(targetTime)
		if wait > 0 {
			time.Sleep(wait)
		}

		// הדפסה
		now := time.Now().Format("15:04:05.000")
		fmt.Printf("[%s] 🕒 Event %d | ORIGINAL delay: %v ms | ADJUSTED: %v ms\n",
			now, i, event.Delay.Milliseconds(), ReplaySpeedup(event.Delay, speed).Milliseconds())

	waitLoop:
		for {
			select {
			case cmd := <-commands:
				switch cmd {
				case "pause":
					fmt.Println("⏸ simulation paused")
					paused = true
				case "resume":
					fmt.Println("▶️ simulation resumed")
					paused = false
				case "stop":
					fmt.Println("🛑 simulation stopped")
					return nil
				}
			default:
				if paused {
					time.Sleep(200 * time.Millisecond)
					continue
				}

				rec := event.Payload
				if rec == nil || rec.Parsed == nil {
					break waitLoop
				}

				if overrideTable != "" {
					rec.Parsed.TableName = overrideTable
				}

				wg.Add(1)
				go func(rec *Model.ParsedRecord, i int) {
					defer wg.Done()
					fmt.Printf("Running SQL Query for Event %d\n", i)

					result, err := sqlFormatter.Format(rec.Parsed)
					if err != nil {
						fmt.Printf("⚠️ Format error: %v\n", err)
						return
					}

					raw, ok := result.(string)
					if !ok {
						fmt.Println("⚠️ Failed to cast formatted query to string")
						return
					}

					duration, jobID, err := runner.RunRawQuery(ctx, raw)
					if err != nil {
						fmt.Printf("❌ Query failed: %v\n", err)
					} else {
						fmt.Printf("✅ Query succeeded | Duration: %s | Job ID: %s\n", duration, jobID)
					}
				}(rec, i)

				break waitLoop
			}
		}
	}

	return nil
}

// SimulateReplayInGroups runs SimulateReplayWithControl in parallel for each group of events with the same timestamp
func SimulateReplayInGroups(records []*Model.ParsedRecord, commands chan string, speedup float64) error {
	events, err := CalculateReplayEvents(records)
	if err != nil {
		return err
	}

	// Group records by timestamp
	timestampGroups := make(map[time.Time][]*Model.ParsedRecord)
	var timestamps []time.Time

	for _, event := range events {
		ts := event.Timestamp
		timestampGroups[ts] = append(timestampGroups[ts], event.Payload)
	}

	// Sort timestamps chronologically
	for ts := range timestampGroups {
		timestamps = append(timestamps, ts)
	}
	sort.Slice(timestamps, func(i, j int) bool {
		return timestamps[i].Before(timestamps[j])
	})

	var prev time.Time

	for i, ts := range timestamps {
		group := timestampGroups[ts]

		// Sleep based on the time difference between groups
		if i > 0 {
			delay := ts.Sub(prev)
			time.Sleep(ReplaySpeedup(delay, speedup))
		}
		prev = ts

		var wg sync.WaitGroup
		wg.Add(len(group))

		for _, record := range group {
			go func(r *Model.ParsedRecord) {
				defer wg.Done()
				// SimulateReplayWithControl([]*Model.ParsedRecord{r}, commands)
			}(record)
		}
		wg.Wait()
	}
	return nil
}
