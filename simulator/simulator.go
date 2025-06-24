package Simulator

import (
	"time"

	"github.com/HadasAmar/analytics-load-tool/Model"
)

type Simulator struct {
	Speedup float64
}

func New(speedup float64) *Simulator {
	return &Simulator{Speedup: speedup}
}

func (s *Simulator) Stream(entries []Model.LogEntry) <-chan Model.LogEntry {
	out := make(chan Model.LogEntry)
	go func() {
		defer close(out)
		for _, entry := range entries {
			time.Sleep(time.Second / time.Duration(s.Speedup))
			out <- entry
		}
	}()
	return out
}
