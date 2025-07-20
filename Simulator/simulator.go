package Simulator

import (
	"context"
	"fmt"
	"sort"
	"sync"
	"time"

	Formatter "github.com/HadasAmar/analytics-load-tool/formatter"
	"github.com/HadasAmar/analytics-load-tool/Model"
	"github.com/HadasAmar/analytics-load-tool/Runner"
)

// External control commands sent over the channel
const (
	Pause  = "pause"
	Resume = "resume"
	Stop   = "stop"
)

// SimulateReplayInGroups executes all records that share the same timestamp in parallel
// and supports Pause / Resume / Stop through a command channel.
//
// records       - slice of ParsedRecord objects to replay
// sqlFormatter  - implementation that converts ParsedQuery to raw SQL string
// runner        - QueryRunner that executes the raw SQL against BigQuery (or other target)
// ctx           - context propagated from main
// overrideTable - non-empty string overrides the table name in each ParsedQuery
// speedup       - factor to accelerate or slow the sleep between events (1 = real pace)
// commands      - read-only channel for Pause/Resume/Stop (pass nil if not needed)
// wg            - root WaitGroup from main; every goroutine launched here must call wg.Done()
func SimulateReplayInGroups(
	records []*Model.ParsedRecord,
	sqlFormatter Formatter.Formatter,
	runner Runner.QueryRunner,
	ctx context.Context,
	overrideTable string,
	speedup float64,
	commands <-chan string,
	wg *sync.WaitGroup,
) error {

	events, err := CalculateReplayEvents(records)
	if err != nil {
		return err
	}
	if len(events) == 0 {
		return nil
	}

	// Group events by exact timestamp
	grouped := make(map[time.Time][]*Model.ParsedRecord)
	var times []time.Time
	for _, ev := range events {
		grouped[ev.Timestamp] = append(grouped[ev.Timestamp], ev.Payload)
	}
	for ts := range grouped {
		times = append(times, ts)
	}
	sort.Slice(times, func(i, j int) bool { return times[i].Before(times[j]) })

	prev := times[0]

mainLoop:
	for idx, ts := range times {

		// Sleep according to the gap between the current and previous group
		if idx > 0 {
			gap := ts.Sub(prev)
			time.Sleep(ReplaySpeedup(gap, speedup))
		}
		prev = ts

		// Handle Pause / Resume / Stop before launching the group
		for {
			if commands == nil {
				break
			}
			select {
			case cmd := <-commands:
				switch cmd {
				case Pause:
					waitUntilResumeOrStop(commands)
				case Stop:
					break mainLoop
				}
			default:
				goto runGroup
			}
		}

runGroup:
		recs := grouped[ts]

		localWg := &sync.WaitGroup{}
		localWg.Add(len(recs))

		for _, rec := range recs {
			// Increment the root WaitGroup so main can wait for all goroutines
			wg.Add(1)

			go func(r *Model.ParsedRecord) {
				defer localWg.Done()
				defer wg.Done()

				if r == nil || r.Parsed == nil {
					return
				}
				if overrideTable != "" {
					r.Parsed.TableName = overrideTable
				}

				formatted, err := sqlFormatter.Format(r.Parsed)
				if err != nil {
					fmt.Printf("format error: %v\n", err)
					return
				}
				raw, _ := formatted.(string)

				if _, _, err := runner.RunRawQuery(ctx, raw); err != nil {
					fmt.Printf("query failed: %v\n", err)
				}
			}(rec)
		}
		localWg.Wait() // wait for all records in this group to complete before moving on
	}

	return nil
}

// waitUntilResumeOrStop blocks until Resume or Stop is received
func waitUntilResumeOrStop(commands <-chan string) {
	for {
		cmd := <-commands
		if cmd == Resume || cmd == Stop {
			return
		}
	}
}

// -------------- existing helpers kept unchanged ---------------

// ReplayEvent represents an event in the simulation.
type ReplayEvent struct {
	Timestamp time.Time
	Payload   *Model.ParsedRecord
	Delay     time.Duration
}

// CalculateReplayEvents turns a slice of records into ReplayEvents with per-record delay
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

// ReplaySpeedup returns an adjusted delay after applying a speedup factor
func ReplaySpeedup(delay time.Duration, speedup float64) time.Duration {
	if speedup <= 0 {
		speedup = 1.0
	}
	return time.Duration(float64(delay) / speedup)
}
