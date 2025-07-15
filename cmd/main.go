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
	wg := sync.WaitGroup{}
	err = Simulator.SimulateReplaySimple(records, sqlFormatter, runner, ctx, overrideTable, &wg)
	if err != nil {
		log.Fatalf("❌ Simulation failed: %v", err)
	}
	wg.Wait()
	fmt.Println("🎉 Simulation completed!")
}
