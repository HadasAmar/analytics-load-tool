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
	err := configuration.InitGlobalConsul()
	if err != nil {
		log.Fatalf("❌ Failed to initialize Consul: %v", err)
	}

	// Read records from file instead of Consul
	records, err := Reader.ReadLogFile(logFile)
	if err != nil {
		log.Fatalf("❌ Failed to read records: %v", err)
	}

	commands := make(chan string)

	// Run the simulator with timestamp-based grouping and parallelism
	go func() {
		errSimulate := Simulator.SimulateReplayInGroups(records, commands, 2.0)
		if errSimulate != nil {
			log.Fatalf("❌ Simulation failed: %v", errSimulate)
		}
	}()

	// Command loop: pause/resume/stop
	for {
		var input string
		fmt.Println("Enter command [pause/resume/stop]:")
		fmt.Scanln(&input)
		if input == "pause" || input == "resume" || input == "stop" {
			commands <- input
		}
		if input == "stop" {
			break
		}
	}

	// Optional: generate output SQL file
	f, err := os.Create("output.sql")
	if err != nil {
		log.Fatal(err)
	}
	defer f.Close()

	ctx := context.Background()

	projectID := "platform-hackaton-2025"
	credsPath := "./credentials.json"

	runner, err := Runner.NewBigQueryRunner(ctx, projectID, credsPath)
	if err != nil {
		log.Fatalf("❌ Failed to create Runner: %v", err)
	}

	var sqlFormatter formatter.Formatter = &formatter.SQLFormatter{}
	count := 0
	raw := ""
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
		count++
		_, err = f.WriteString(pretty + "\n\n")
		if err != nil {
			log.Fatal(err)
		}
	}

	duration, jobID, err := runner.RunRawQuery(ctx, raw)
	if err != nil {
		log.Fatalf("❌ Query failed: %v", err)
	}
	log.Printf("🏁 Finished successfully | Duration: %s | Job ID: %s", duration, jobID)
}
