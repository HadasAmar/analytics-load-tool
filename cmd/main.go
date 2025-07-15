package main

import (
	"context"
	"fmt"
	"log"
	"sync"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Formatter"
	"github.com/HadasAmar/analytics-load-tool/Reader"
	"github.com/HadasAmar/analytics-load-tool/Runner"
	"github.com/HadasAmar/analytics-load-tool/Simulator"
	"github.com/HadasAmar/analytics-load-tool/configuration"
	mongoLogger "github.com/HadasAmar/analytics-load-tool/mongo"
)

func main() {
	// 🟣 Init Consul
	if err := configuration.InitGlobalConsul(); err != nil {
		log.Fatalf("❌ Failed to initialize Consul: %v", err)
	}

	// 🟡 Override table name from Consul
	overrideTable, err := configuration.GetOverrideTable(configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("❌ Failed to get override table from Consul: %v", err)
	}

	// 🔵 Init MongoDB logger
	logger, err := mongoLogger.NewMongoLogger(
		"mongodb+srv://shilat3015:sh0533143015@cluster0.q7ov2xk.mongodb.net",
		"logsdb",
		"records",
		"progress",
	)
	if err != nil {
		log.Fatalf("❌ Failed to connect to MongoDB: %v", err)
	}

	// ⏱ Fetch last processed timestamp
// ⚠️ DEBUG ONLY: משוך את כל הרשומות מהמונגו בלי סינון לפי זמן
lastTS := time.Time{}

	// 📥 שליפת רשומות ממונגו
	rawRecords, err := logger.ReadLogsAfter(lastTS)
	if err != nil {
		log.Fatalf("❌ Failed to read records from MongoDB: %v", err)
	}
	log.Printf("📥 Got %d raw records from Mongo", len(rawRecords))

	records, err := Reader.ReadParsedRecordsFromMongo(rawRecords)
	if err != nil {
		log.Fatalf("❌ Failed to parse records: %v", err)
	}
	log.Printf("✅ Parsed %d records successfully", len(records))

	// ☁️ Init BigQuery runner
	ctx := context.Background()
	projectID := "platform-hackaton-2025"
	credsPath := "./credentials.json"

	runner, err := Runner.NewBigQueryRunner(ctx, projectID, credsPath)
	if err != nil {
		log.Fatalf("❌ Could not create BigQuery client: %v", err)
	}

	var sqlFormatter Formatter.Formatter = &Formatter.SQLFormatter{}

	// ▶️ Simulate replay
	var wg sync.WaitGroup
	commands := make(chan string)
	done := make(chan struct{})

	go func() {
		err := Simulator.SimulateReplayWithControl(records, commands, sqlFormatter, runner, ctx, overrideTable, &wg)
		if err != nil {
			fmt.Printf("❌ Simulation error: %v\n", err)
		}
		wg.Wait()
		close(done)
	}()

	// Controller
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

	// 📝 Save each record and timestamp
	for _, record := range records {
		if record == nil || record.Parsed == nil || record.LogTime.Before(lastTS) {
			continue
		}
		_ = logger.SaveLog(record)
		_ = logger.SaveLastProcessedTimestamp(record.LogTime)
	}

	<-done
	fmt.Println("🎉 Simulation completed!")
}
