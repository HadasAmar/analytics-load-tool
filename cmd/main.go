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

	// get log file path from Consul
	logFile, err := configuration.GetLogFilePath(configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("❌ Failed to get log file path from Consul: %v", err)
	}
	// get override table name from Consul
	overrideTable, err := configuration.GetOverrideTable(configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("❌ Failed to get override table: %v", err)

	}

	// 📄 Get log file path and reader from Consul
	logFilePath, err := configuration.GetLogFilePath(configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("❌ Failed to get log file path: %v", err)
	}
	reader, err := Reader.GetReaderFromConsul(logFilePath, configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("❌ Failed to get reader from Consul: %v", err)
	}

	// 🔵 Connect to MongoDB
	logger, err := mongoLogger.NewMongoLogger(
		"mongodb+srv://shilat3015:sh0533143015@cluster0.q7ov2xk.mongodb.net/?tlsInsecure=true",
		"logsdb",
		"records",
		"progress",
	)
	if err != nil {
		log.Fatalf("❌ Failed to connect to MongoDB: %v", err)
	}

	// 📥 Read raw records from file (Parsed=nil)
	rawRecordsFromFile, err := reader.Read(logFilePath)
	if err != nil {
		log.Fatalf("❌ Failed to read records from file: %v", err)
	}
	log.Printf("📄 Read %d raw records from file", len(rawRecordsFromFile))

	// 💾 Save raw records to Mongo
	inserted := 0
	for _, rec := range rawRecordsFromFile {
		if rec == nil || rec.Query == "" {
			continue
		}
		rec.Parsed = nil
		if err := logger.SaveLog(rec); err != nil {
			log.Printf("⚠️ Failed to save record: %v", err)
			continue
		}
		inserted++
	}
	log.Printf("✅ Inserted %d raw records to Mongo", inserted)

	// ⏱ Get last processed timestamp
	lastTS, err := logger.GetLastProcessedTimestamp()
	if err != nil {
		log.Fatalf("❌ Failed to get last timestamp: %v", err)
	}
	log.Printf("⏱ Resuming from: %s", lastTS.Format(time.RFC3339))
	// 📥 Read from Mongo
	rawFromMongo, err := logger.ReadLogsAfter(lastTS)
	if err != nil {
		log.Fatalf("❌ Failed to read from Mongo: %v", err)
	}
	log.Printf("📥 Got %d raw records from Mongo", len(rawFromMongo))

	// 🧠 Parse records
	records, err := Reader.ReadParsedRecordsFromMongo(rawFromMongo)
	if err != nil {
		log.Fatalf("❌ Failed to parse records: %v", err)
	}
	log.Printf("✅ Parsed %d records", len(records))

	// Init BigQuery runner
	ctx := context.Background()
	runner, err := Runner.NewBigQueryRunner(ctx, "platform-hackaton-2025", "./credentials.json")
	if err != nil {
		log.Fatalf("Could not create BigQuery client: %v", err)
	}
	sqlFormatter := &Formatter.SQLFormatter{}
	// ▶️ Simulate
	var wg sync.WaitGroup
	commands := make(chan string)
	done := make(chan struct{})

	// Create SQL formatter
	var sqlFormatter Formatter.Formatter = &Formatter.SQLFormatter{}

	// ▶️ Simulate replay in background
	wg := sync.WaitGroup{}
	err = Simulator.SimulateReplaySimple(records, sqlFormatter, runner, ctx, overrideTable, &wg)
	if err != nil {
		log.Fatalf("Simulation failed: %v", err)
	}
	wg.Wait()

	fmt.Println("🎉 Simulation completed!")

	// שמירת כל רשומה ותחנה אחרונה
	for _, record := range records {
		if record == nil || record.Parsed == nil {
			continue
		}
		fmt.Printf("Saving record with timestamp: %s\n", record.LogTime.Format(time.RFC3339))
		_ = logger.SaveLog(record)
		_ = logger.SaveLastProcessedTimestamp(record.LogTime)
	}

		if record.LogTime.After(latest) {
			latest = record.LogTime
		}
	}
	// 💾 Save latest timestamp to Mongo + Consul
	if !latest.IsZero() {
		if err := logger.SaveLastProcessedTimestamp(latest); err != nil {
			log.Printf("⚠️ Failed to save progress timestamp to Mongo: %v", err)
		}
		if err := configuration.GlobalConsulClient.PutRawValue("loadtool/config/Recently_touched_index", latest.GoString()); err != nil {
			log.Printf("⚠️ Failed to write latest timestamp to Consul: %v", err)
		} else {
			log.Println("✅ Saved last timestamp to Consul")
		}
	}

	<-done
	fmt.Println("🎉 Simulation completed!")
}
