// main.go
package main

import (
	"fmt"
	"os"
	"path/filepath"
	"github.com/HadasAmar/analytics-load-tool.git/Model"
	"github.com/HadasAmar/analytics-load-tool.git/Output"
	"github.com/HadasAmar/analytics-load-tool.git/Parser"
	"github.com/HadasAmar/analytics-load-tool.git/Reader"
	"github.com/HadasAmar/analytics-load-tool.git/Simulator"
)

func main() {
	if len(os.Args) < 2 {
		fmt.Println("Usage: go run main.go <filename>")
		return
	}

	filename := os.Args[1]
	rawRecords, err := Reader.ReadFile(filename)
	if err != nil {
		fmt.Println("Error reading file:", err)
		return
	}

	entries := []Model.LogEntry{}

	if filepath.Ext(filename) == ".csv" {
		for _, raw := range rawRecords {
			entry := Parser.ParseCSVRaw(raw) // במקום ParseRecord
			entries = append(entries, *entry)
		}
	} else {
		fmt.Println("Parsing as JSON file")
		for _, raw := range rawRecords {
			entry := Parser.ParseRecord(raw)
			if entry != nil {
				entries = append(entries, *entry)
			}
		}
	}

	sim := Simulator.New(10.0) // speedup factor
	for e := range sim.Stream(entries) {
		Output.WriteJSONL("output.jsonl", e)
	}
}
