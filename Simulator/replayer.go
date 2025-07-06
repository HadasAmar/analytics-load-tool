package Simulator

import (
	"log"
	"time"
)

// SendEvent simulates sending an event at the specified timestamp.
func SendEvent(e ReplayEvent) error {

	log.Printf("✅ Event sent at simulated time: %v | original: %v", time.Now(), e.Timestamp)
	return nil
}

//function that calculates the delay based on a speedup factor.
func ReplaySpeedup(delay time.Duration, speedup float64) time.Duration {
	if speedup <= 0 {
		speedup = 1.0
	}
	adjusted := time.Duration(float64(delay) / speedup)
	return adjusted
}
