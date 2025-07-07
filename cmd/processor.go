package main

// import (
// 	"context"
// 	"fmt"
// 	"log"

// 	"github.com/HadasAmar/analytics-load-tool/Model"
// 	"github.com/HadasAmar/analytics-load-tool/Parser"
// 	"github.com/HadasAmar/analytics-load-tool/Reader"
// 	"github.com/HadasAmar/analytics-load-tool/Writer"
// 	// "github.com/HadasAmar/analytics-load-tool/formatter"
// )

// func ProcessFile(filename string) error {
// 	reader, err := Reader.GetReader(filename)
// 	if err != nil {
// 		return fmt.Errorf("error getting reader: %v", err)
// 	}

// 	rawRecords, err := reader.Read(filename)
// 	if err != nil {
// 		return fmt.Errorf("error reading records: %v", err)
// 	}

// 	var parsedRecords []Model.ParsedRecord
// 	for _, raw := range rawRecords {
// 		if p := Parser.ParseRawRecord(raw); p != nil {
// 			log.Printf("Parsed OK: time=%s ip=%s", p.LogTime, p.IP)
// 			parsedRecords = append(parsedRecords, *p)
// 		}
// 	}

// 	var formatted []interface{}
// 	formatter := formatter.BQFormatter{}

// 	for _, rec := range parsedRecords {
// 		formattedRecord, err := formatter.Format(rec)
// 		if err != nil {
// 			log.Printf("Skipping record due to formatting error: %v", err)
// 			continue
// 		}
// 		formatted = append(formatted, formattedRecord)
// 	}

// 	ctx := context.Background()
// 	writer, err := Writer.NewBQWriter(ctx, "./credentials.json", "platform-hackaton-2025", "My_Try", "loadtool_logs")
// 	if err != nil {
// 		return fmt.Errorf("failed to init BQ writer: %v", err)
// 	}

// 	if err := writer.Write(formatted); err != nil {
// 		return fmt.Errorf("failed to write to BigQuery: %v", err)
// 	}

// 	return nil
// }
