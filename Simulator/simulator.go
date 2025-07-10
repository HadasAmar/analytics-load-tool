package Simulator

import (
	"fmt"
	"log"
	"sort"
	"strconv"
	"sync"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Model"
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
func SimulateReplayWithControl(records []*Model.ParsedRecord, commands chan string) error {
	events, err := CalculateReplayEvents(records)
	if err != nil {
		return err
	}

	rawSpeed, err := configuration.GetSpeedFactor(configuration.GlobalConsulClient)
	if err != nil {
		log.Printf("⚠️ failed to get speed_factor: %v", err)
		rawSpeed = "1.0"
	}
	fmt.Printf("✅ speed_factor from Consul: %s\n", rawSpeed)

	// המרה ל־float64
	speed, err := strconv.ParseFloat(rawSpeed, 64)
	if err != nil {
		log.Fatalf("❌ Failed to parse speed_factor as float: %v", err)
	}

	paused := false

	for i, event := range events {
		adjustedDelay := ReplaySpeedup(event.Delay, speed)

		start := time.Now()

		if i > 0 {
			fmt.Printf("🕒 Event %d | Original delay: %v ms | Adjusted: %v ms\n", i, event.Delay.Milliseconds(), adjustedDelay.Milliseconds())
		} else {
			fmt.Printf("🟢 Event %d | No delay (first event)\n", i)
		}

		timer := time.NewTimer(adjustedDelay)
		defer timer.Stop()

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
			case <-timer.C:
				if paused {
					fmt.Println("⏸ timer fired, but still paused – waiting for resume...")
					//wait for resume command
					for paused {
						time.Sleep(200 * time.Millisecond)
						select {
						case cmd := <-commands:
							if cmd == "resume" {
								fmt.Println("▶️ resumed from pause")
								paused = false
							}
							if cmd == "stop" {
								fmt.Println("🛑 simulation stopped")
								return nil
							}
						default:
							//wait
						}
					}
				}

				// Send the event payload to the command channel
				elapsed := time.Since(start)
				fmt.Printf("🚀 Sent event at %v (waited %.0f ms)\n", event.Timestamp, elapsed.Seconds()*1000)
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
				SimulateReplayWithControl([]*Model.ParsedRecord{r}, commands)
			}(record)
		}
		wg.Wait()
	}
	return nil
}
