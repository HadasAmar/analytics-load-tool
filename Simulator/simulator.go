package Simulator

import (
	"fmt"
	"sort"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Model"
)

// ReplayEvent represents an event in the simulation.
type ReplayEvent struct {
	Timestamp time.Time
	Payload   *Model.ParsedRecord
	Delay     time.Duration
}

// return a slice of ReplayEvent based on the provided records.
// Each event contains the timestamp, payload, and delay since the previous event.
func CalculateReplayEvents(records []*Model.ParsedRecord) ([]ReplayEvent, error) {
	if len(records) == 0 {
		return nil, nil
	}

	// sort records by LogTime
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

// function that calculates the delay based on a speedup factor.
func ReplaySpeedup(delay time.Duration, speedup float64) time.Duration {
	if speedup <= 0 {
		speedup = 1.0
	}
	adjusted := time.Duration(float64(delay) / speedup)
	return adjusted
}

// SimulateReplay reads records and plays them with real latency (in milliseconds)
func SimulateReplay(records []*Model.ParsedRecord) error {
	events, err := CalculateReplayEvents(records)
	if err != nil {
		return err
	}

	for i, event := range events {
		if i > 0 {

			// Calculate the adjusted delay based on the speedup factor
			adjusted := ReplaySpeedup(event.Delay, 0.2)
			fmt.Printf("original %v wait %v...\n", event.Delay.Milliseconds(), adjusted.Milliseconds())
			time.Sleep(adjusted)

		}
		fmt.Printf("Sends an event on time %v with IP %s\n", event.Timestamp, event.Payload.IP)
	}
	return nil
}
