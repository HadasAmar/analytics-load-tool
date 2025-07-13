package main

import (
	"context"
	"fmt"
	"log"
	"os"
	"sync"

	"github.com/HadasAmar/analytics-load-tool/Formatter"
	"github.com/HadasAmar/analytics-load-tool/Reader"
	"github.com/HadasAmar/analytics-load-tool/Runner"
	"github.com/HadasAmar/analytics-load-tool/Simulator"
	"github.com/HadasAmar/analytics-load-tool/configuration"
)

func main() {
	// 🟡 Expect CLI args: <log_file> <override_table_name>
	if len(os.Args) < 3 {
		log.Fatal("Usage: go run ./cmd/main.go <log_file> <override_table>")
	}
	logFile := os.Args[1]
	overrideTable := os.Args[2]

	// 🔧 Initialize Consul (optional)
	if err := configuration.InitGlobalConsul(); err != nil {
		log.Fatalf("❌ Failed to initialize Consul: %v", err)
	}

	// 📥 Read records from file
	records, err := Reader.ReadLogFile(logFile)
	if err != nil {
		log.Fatalf("❌ Failed to read records: %v", err)
	}

	// ☁️ Init BigQuery runner
	ctx := context.Background()
	projectID := "platform-hackaton-2025"
	credsPath := "./credentials.json"

	runner, err := Runner.NewBigQueryRunner(ctx, projectID, credsPath)
	if err != nil {
		log.Fatalf("❌ Could not create BigQuery client: %v", err)
	}

	// 🧱 Create SQL formatter
	var sqlFormatter Formatter.Formatter = &Formatter.SQLFormatter{}

	// ▶️ Simulate replay in background
	var wg sync.WaitGroup
	commands := make(chan string)
	done := make(chan struct{})

	go func() {

		err := Simulator.SimulateReplayWithControl(records, commands, sqlFormatter, runner, ctx, overrideTable, &wg)

		// err := Simulator.SimulateReplayInGroups(records, commands, 2.0)
		if err != nil {
			fmt.Printf("❌ Simulation error: %v\n", err)
		}
		wg.Wait() // Wait for all goroutines to finish
		close(done)
	}()

	// 🕹️ Control loop for commands
	go func() {
		for {
			var input string
			fmt.Println("Enter command [pause/resume/stop]:")
			fmt.Scanln(&input)
			if input == "stop" {
				commands <- "stop"
				return
			}
			if input == "pause" || input == "resume" {
				commands <- input
			}
		}
	}()

	<-done
	fmt.Println("🎉 Simulation completed!")

	/*
		// 📝 Create SQL file
		f, err := os.Create("output.sql")
		if err != nil {
			log.Fatal(err)
		}
		defer f.Close()

		// 🔁 Format, write, and send each query
		count := 0
		for _, record := range records {
			if record == nil || record.Parsed == nil {
				continue
			}

			// 🏷 Override table name if provided
			if overrideTable != "" {
				record.Parsed.TableName = overrideTable
			}

			result, err := sqlFormatter.Format(record.Parsed)
			if err != nil {
				log.Printf("⚠️ Format error: %v", err)
				continue
			}

			raw, _ := result.(string)
			pretty := Formatter.PrettySQL(raw)

			// Write to file
			_, err = f.WriteString(pretty + "\n\n")
			if err != nil {
				log.Fatalf("❌ Failed to write to file: %v", err)
			}

			// Send to BigQuery
			duration, jobID, err := runner.RunRawQuery(ctx, raw)
			if err != nil {
				log.Printf("❌ Failed to execute query: %v", err)
				continue
			}
			log.Printf("✅ Query succeeded | Duration: %s | Job ID: %s", duration, jobID)

			count++
		}

		log.Printf("🎉 All done! %d queries written and sent to BigQuery", count)
	*/
}
