package main

import (
	"context"
	"fmt"
	"log"
	"os"

	formatter "github.com/HadasAmar/analytics-load-tool/formatter"
	"github.com/HadasAmar/analytics-load-tool/Reader"
	"github.com/HadasAmar/analytics-load-tool/Runner"
	Simulator "github.com/HadasAmar/analytics-load-tool/Simulator"
	"github.com/HadasAmar/analytics-load-tool/configuration"
)

func main() {
	if len(os.Args) < 2 {
		log.Fatal("Pass a path to the log file as a parameter")
	}
	logFile := os.Args[1]

	// Optional: initialize Consul (if needed)
	if err := configuration.InitGlobalConsul(); err != nil {
		log.Fatalf("❌ Failed to initialize Consul: %v", err)
	}

	// Read records from file
	records, err := Reader.ReadLogFile(logFile)
	if err != nil {
		log.Fatalf("❌ Failed to read records: %v", err)
	}

	commands := make(chan string)

	// Start simulation in background
	go func() {
		if err := Simulator.SimulateReplayInGroups(records, commands, 2.0); err != nil {
			log.Fatalf("❌ Simulation failed: %v", err)
		}
	}()

	// Command loop
	for {
		var input string
		fmt.Println("Enter command [pause/resume/stop]:")
		fmt.Scanln(&input)
		if input == "stop" {
			break
		}
		if input == "pause" || input == "resume" {
			commands <- input
		}
	}

	// Create SQL output file
	f, err := os.Create("output.sql")
	if err != nil {
		log.Fatal(err)
	}
	defer f.Close()

	var sqlFormatter formatter.Formatter = &formatter.SQLFormatter{}
	var raw string
	count := 0

	for _, record := range records {
		if record == nil || record.Parsed == nil {
			continue
		}
		result, err := sqlFormatter.Format(record.Parsed)
		if err != nil {
			log.Printf("⚠️ Format error: %v", err)
			continue
		}
		raw, _ = result.(string)
		pretty := formatter.PrettySQL(raw)
		_, err = f.WriteString(pretty + "\n\n")
		if err != nil {
			log.Fatal(err)
		}
		count++
	}
	log.Printf("✅ Created output.sql with %d queries", count)

	// Optional: Run query in BigQuery
	ctx := context.Background()
	projectID := "platform-hackaton-2025"
	credsPath := "./credentials.json"

	runner, err := Runner.NewBigQueryRunner(ctx, projectID, credsPath)
	if err != nil {
		log.Printf("❌ Skipping BigQuery execution – client creation failed: %v", err)
		return
	}

	duration, jobID, err := runner.RunRawQuery(ctx, raw)
	if err != nil {
		log.Fatalf("❌ Query failed: %v", err)
	}
	log.Printf("🏁 Finished successfully | Duration: %s | Job ID: %s", duration, jobID)
}
