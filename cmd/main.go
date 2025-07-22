package main

import (
	"context"
	"log"
	"net"
	"net/http"
	"os"
	"sync"
	"time"

	"github.com/HadasAmar/analytics-load-tool/configuration"
	"github.com/HadasAmar/analytics-load-tool/metrics"
	"github.com/HadasAmar/analytics-load-tool/Reader"
	"github.com/HadasAmar/analytics-load-tool/Runner"
	"github.com/HadasAmar/analytics-load-tool/Simulator"
	Formatter "github.com/HadasAmar/analytics-load-tool/formatter"
	mongoLogger "github.com/HadasAmar/analytics-load-tool/mongo"
)

func main() {
	ctx := context.Background()

	// Init metrics client
	metrics.Init()
	defer metrics.Client.Close()

	// Init Consul
	if err := configuration.InitGlobalConsul(); err != nil {
		log.Fatalf("❌ Failed to initialize Consul: %v", err)
	}

	// Register HTTP handler
	http.HandleFunc("/api/input-language", configuration.InputLanguageHandler)

	// Determine port
	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}

	// Bind listener before logging
	addr := ":" + port
	listener, err := net.Listen("tcp", addr)
	if err != nil {
		log.Fatalf("❌ HTTP server failed to bind on %s: %v", addr, err)
	}
	// Confirm listening
	log.Printf("✅ HTTP server listening on %s", listener.Addr())

	// Serve in goroutine
	go func() {
		if err := http.Serve(listener, nil); err != nil {
			log.Fatalf("❌ HTTP server stopped: %v", err)
		}
	}()

	// Fetch Consul config
	logFilePath, err := configuration.GetLogFilePath(configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("❌ Failed to get log file path from Consul: %v", err)
	}
	reader, err := Reader.GetReaderFromConsul(logFilePath, configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("❌ Failed to get reader from Consul: %v", err)
	}

	overrideTable, err := configuration.GetOverrideTable(configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("❌ Failed to get override table: %v", err)
	}

	// Mongo logger setup
	logger, err := mongoLogger.NewMongoLogger(
		"mongodb+srv://shilat3015:sh0533143015@cluster0.q7ov2xk.mongodb.net/?tlsInsecure=true",
		"logsdb", "records", "progress",
	)
	if err != nil {
		log.Fatalf("❌ Failed to connect to MongoDB: %v", err)
	}

	batchSize, err := configuration.GetBatchSize(configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("❌ Failed to get batch size from Consul: %v", err)
	}
	lastID, err := configuration.GetLastProcessedID()
	if err != nil {
		log.Fatalf("❌ Failed to get last processed ID from Consul: %v", err)
	}
	log.Printf("🔢 Using batch size: %d", batchSize)
	log.Printf("⏱ Resuming from ID: %s", lastID.Hex())

	// Optional: clear records
	if err := logger.DeleteAllRecords(); err != nil {
		log.Fatalf("❌ Failed to delete all records: %v", err)
	}

	// Read raw records
	rawRecords, err := reader.Read(logFilePath)
	if err != nil {
		log.Fatalf("❌ Failed to read records from file: %v", err)
	}
	log.Printf("📄 Read %d raw records from file", len(rawRecords))
	for _, rec := range rawRecords {
		if rec == nil || rec.Query == "" {
			continue
		}
		rec.Parsed = nil
		if err := logger.SaveLog(rec); err != nil {
			log.Printf("⚠️ Failed to save record: %v", err)
		}
	}
	log.Printf("✅ Inserted %d raw records to Mongo", len(rawRecords))

	// BigQuery runner
	runner, err := Runner.NewBigQueryRunner(ctx, "platform-hackaton-2025", "./credentials.json")
	if err != nil {
		log.Fatalf("❌ Could not create BigQuery client: %v", err)
	}
	log.Printf("✅ BigQuery client created successfully")

	// SQL formatter
	var sqlFormatter Formatter.Formatter = &Formatter.SQLFormatter{}

	// Process batches
	var wg sync.WaitGroup
	var lastTimestamp *time.Time

	for batchNum := 1; ; batchNum++ {
		start := time.Now()

		rawBatch, latestID, err := logger.ReadLogsAfterWithLimit(lastID, batchSize)
		if err != nil {
			log.Fatalf("❌ Failed to read batch: %v", err)
		}
		if len(rawBatch) == 0 {
			break
		}

		parsedBatch, err := Reader.ReadParsedRecordsFromMongo(rawBatch)
		if err != nil {
			log.Fatalf("❌ Failed to parse batch: %v", err)
		}

		log.Printf("▶️ Sending batch %d with %d records...", batchNum, len(parsedBatch))

		err = Simulator.SimulateReplay(parsedBatch, sqlFormatter, runner, ctx, overrideTable, &wg, lastTimestamp)
		if err != nil {
			log.Printf("⚠️ Simulation failed on batch %d: %v", batchNum, err)
		} else {
			metrics.Success(batchNum, len(parsedBatch))
		}

		last := parsedBatch[len(parsedBatch)-1]
		if last != nil {
			lastID = latestID
			lastTimestamp = &last.LogTime
			_ = configuration.SaveLastProcessedID(lastID)
			log.Printf("💾 Updated checkpoint to: %s", lastID.Hex())
		}
		metrics.Timing(start, "loadtool.batch.duration")
	}

	wg.Wait()
}
