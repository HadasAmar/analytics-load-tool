package main

// import (
// 	"context"
// 	"fmt"
// 	"log"
// 	"os"

// 	"github.com/HadasAmar/analytics-load-tool/Model"
// 	"github.com/HadasAmar/analytics-load-tool/Parser"
// 	"github.com/HadasAmar/analytics-load-tool/Reader"
// 	"github.com/HadasAmar/analytics-load-tool/Writer"
// )

// func main() {
// 	if len(os.Args) < 2 {
// 		fmt.Println("Usage: go run main.go <filename>")
// 		return
// 	}

// 	filename := os.Args[1]

// 	// Step 1: Get reader by file extension
// 	reader, err := Reader.GetReader(filename)
// 	if err != nil {
// 		log.Fatalf("Error getting reader: %v", err)
// 	}

// 	// Step 2: Read raw records
// 	rawRecords, err := reader.Read(filename)
// 	if err != nil {
// 		log.Fatalf("Error reading records: %v", err)
// 	}

// 	// Step 3: Parse raw records to ParsedRecord
// 	var parsedRecords []Model.ParsedRecord
// 	for _, raw := range rawRecords {
// 		if p := Parser.ParseRawRecord(raw); p != nil {
// 			parsedRecords = append(parsedRecords, *p)
// 		}
// 	}

// 	// Step 4: Convert ParsedRecord to BQLogRecord
// 	bqRecords, conversionErrors := bq_adapter.ConvertParsedListToBQ(parsedRecords)
// 	if len(conversionErrors) > 0 {
// 		log.Printf("Warning: %d records failed during conversion\n", len(conversionErrors))
// 	}

// 	// Step 5: Initialize BigQuery writer
// 	ctx := context.Background()
// 	writer, err := Writer.NewBQWriter(ctx,
// 		"./credentials.json",
// 		"platform-hackaton-2025",
// 		"My_Try",
// 		"loadtool_logs",
// 	)
// 	if err != nil {
// 		log.Fatalf("Failed to initialize BigQuery writer: %v", err)
// 	}

// 	// Step 6: Write to BigQuery
// 	err = writer.Write(bqRecords)
// 	if err != nil {
// 		log.Fatalf("Failed to write to BigQuery: %v", err)
// 	}

// 	log.Println(" Done: all valid records were uploaded to BigQuery.")
// }
