package Simulator

import (
	"fmt"
	"sort"
	"sync"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Model"
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
func SimulateReplayWithControl(records []*Model.ParsedRecord, commands chan string) error {
	events, err := CalculateReplayEvents(records)
	if err != nil {
		return err
	}

	paused := false

	for i, event := range events {
		if i > 0 {
			adjusted := ReplaySpeedup(event.Delay, 2)
			fmt.Printf("original %v wait %v...\n", event.Delay.Milliseconds(), adjusted.Milliseconds())
		}

		// Wait for the adjusted delay
		timer := time.NewTimer(ReplaySpeedup(event.Delay, 0.5))

		for {
			select {
			case cmd := <-commands:
				if cmd == "pause" {
					fmt.Println("⏸ simulation paused. Type 'resume' to continue or 'stop' to end.")
					paused = true
				}
				if cmd == "resume" {
					fmt.Println("▶️ continuing simulation")
					paused = false
				}
				if cmd == "stop" {
					fmt.Println("🛑 simulation stopped")
					return nil
				}
			case <-timer.C:
				if !paused {
					fmt.Printf("Sends an event on time %v with IP %s\n", event.Timestamp, event.Payload.IP)
					break
				} else {
					time.Sleep(500 * time.Millisecond)
					timer.Reset(0)
				}
			}
			if !paused {
				break
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
				SimulateReplayWithControl([]*Model.ParsedRecord{r}, commands)
			}(record)
		}
		wg.Wait()
	}

	return nil
}
