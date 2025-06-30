package main

import (
	"context"
	"fmt"
	"log"

	"github.com/HadasAmar/analytics-load-tool/Model"

	//"github.com/HadasAmar/analytics-load-tool/Output"
	"github.com/HadasAmar/analytics-load-tool/Parser"
	"github.com/HadasAmar/analytics-load-tool/Reader"

	"github.com/HadasAmar/analytics-load-tool/Writer"
	"os"

	//"time"
	"github.com/HadasAmar/analytics-load-tool/configuration"
	"github.com/HadasAmar/analytics-load-tool/formatter"

)

func main() {
		if len(os.Args) < 2 {
		fmt.Println("Usage: go run main.go <filename>")
		return
	}
	filename := os.Args[1]

	// Step 1: Get reader
	reader, err := Reader.GetReader(filename)
	if err != nil {
		log.Fatalf("Error getting reader: %v", err)
	}

	rawRecords, err := reader.Read(filename)
	if err != nil {
		log.Fatalf("Error reading records: %v", err)
	}

	// Step 2: Parse records
	var parsedRecords []Model.ParsedRecord
	for _, raw := range rawRecords {
		if p := Parser.ParseRawRecord(raw); p != nil {
			log.Printf("Parsed OK: time=%s ip=%s", p.LogTime, p.IP)
			parsedRecords = append(parsedRecords, *p)
		}
	}

	// Step 3: Convert to formatted records using BQFormatter
	var formatted []interface{}
	formatter := formatter.BQFormatter{}

	for _, rec := range parsedRecords {
		formattedRecord, err := formatter.Format(rec)
		if err != nil {
			log.Printf("Skipping record due to formatting error: %v", err)
			continue
		}
		formatted = append(formatted, formattedRecord)
	}

	// Step 4: Init BQ Writer
	ctx := context.Background()
	writer, err := Writer.NewBQWriter(ctx, "./credentials.json", "platform-hackaton-2025", "My_Try", "loadtool_logs")
	if err != nil {
		log.Fatalf(" Failed to initialize BigQuery writer: %v", err)
	}

	// Step 5: Write to BigQuery
	if err := writer.Write(formatted); err != nil {
		log.Fatalf(" Failed to write to BigQuery: %v", err)
	}

	//configuration
	// Create the client
	client, err := configuration.NewConsulClient("localhost:8500")
	if err != nil {
		log.Fatalf("Error creating Consul client: %v", err)
	}

	// Calling get_values
	speedFactor, err := configuration.GetSpeedFactor(client)
	if err != nil {
		fmt.Println("Did not find value in Consul")
	} else {
		fmt.Printf("The value from Consul: %s\n", speedFactor)
	}
}
