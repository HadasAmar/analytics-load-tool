package main

import (
	"context"
	"fmt"
	"log"
	"os"
	"sync"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Reader"
	"github.com/HadasAmar/analytics-load-tool/Runner"
	"github.com/HadasAmar/analytics-load-tool/Simulator"
	"github.com/HadasAmar/analytics-load-tool/configuration"
	"github.com/HadasAmar/analytics-load-tool/formatter"
	mongoLogger "github.com/HadasAmar/analytics-load-tool/mongo"
)

func main() {
	// initialize Consul
	if err := configuration.InitGlobalConsul(); err != nil {
		log.Fatalf("❌ Failed to initialize Consul: %v", err)
	}
// רישום endpoint אחד פשוט שמחזיר input_language
	http.HandleFunc("/api/input-language", configuration.InputLanguageHandler)

	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}
	go func() {
	log.Printf("✅ HTTP server listening on :%s", port)
	if err := http.ListenAndServe(":"+port, nil); err != nil {
		log.Fatalf("❌ HTTP server failed: %v", err)
	}
}()

	logFilePath, err := configuration.GetLogFilePath(configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("❌ Failed to get log file path from Consul: %v", err)
		// logFile = "druid-demo.log" // fallback to default if not set
	}
	// get override table name from Consul
	overrideTable, err := configuration.GetOverrideTable(configuration.GlobalConsulClient)
	if err != nil {
		// log.Fatalf("❌ Failed to get override table from Consul: %v", err)
		overrideTable = "My_Try.loadtool_logs" // fallback to default if not set
	}

	// 🟣 Init MongoDB logger
	logger, err := mongoLogger.NewMongoLogger(
		"mongodb+srv://shilat3015:sh0533143015@cluster0.q7ov2xk.mongodb.net/?tlsInsecure=true",
		"logsdb",
		"records",
		"progress",
	)
	if err != nil {
		log.Fatalf("❌ Failed to connect to MongoDB: %v", err)
	}

	// ⏱ Fetch last processed timestamp
	lastTS, err := logger.GetLastProcessedTimestamp()
	if err != nil {
		log.Fatalf("❌ Failed to get last processed timestamp: %v", err)
	}
	log.Printf("⏱ Resuming from: %s", lastTS.Format(time.RFC3339))

	// write a value to Consul for testing
	err = configuration.GlobalConsulClient.PutRawValue("loadtool/config/Recently_touched_index", lastTS.GoString())
	if err != nil {
		log.Fatalf("❌ Failed to write to Consul: %v", err)
	}
	log.Println("✅ Value written to Consul successfully!")

	// 📥 Read records from file
	records, err := Reader.ReadLogFile(logFile.Name())
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

	// שמירת כל רשומה ותחנה אחרונה
	for _, record := range records {
		if record == nil || record.Parsed == nil || record.LogTime.Before(lastTS) {
			continue
		}
		_ = logger.SaveLog(record)
		_ = logger.SaveLastProcessedTimestamp(record.LogTime)
	}

	// <-done
	fmt.Println("🎉 Simulation completed!")
}
