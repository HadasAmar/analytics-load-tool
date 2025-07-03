package Simulator

import (
	"testing"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Model"
)

func TestCalculateReplayEvents(t *testing.T) {
	records := []*Model.ParsedRecord{
		{
			LogTime: parseTime(t, "2024-05-01T08:00:00Z"),
			IP:      "1.1.1.1",
		},
		{
			LogTime: parseTime(t, "2024-05-01T08:00:07Z"),
			IP:      "1.1.1.2",
		},
		{
			LogTime: parseTime(t, "2024-05-01T08:00:17Z"),
			IP:      "1.1.1.3",
		},
	}

	events, err := CalculateReplayEvents(records)
	if err != nil {
		t.Fatalf("unexpected error: %v", err)
	}

	if len(events) != 3 {
		t.Fatalf("expected 3 events, got %d", len(events))
	}

	if events[0].Delay != 0 {
		t.Errorf("first event delay should be 0, got %v", events[0].Delay)
	}

	if events[1].Delay != 7*time.Second {
		t.Errorf("second event delay should be 7s, got %v", events[1].Delay)
	}

	if events[2].Delay != 10*time.Second {
		t.Errorf("third event delay should be 10s, got %v", events[2].Delay)
	}
}

func parseTime(t *testing.T, s string) time.Time {
	tt, err := time.Parse(time.RFC3339, s)
	if err != nil {
		t.Fatalf("invalid time format: %v", err)
	}
	return tt
}
