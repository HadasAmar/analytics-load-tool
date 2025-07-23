package main

import (
	"context"
	"log"
	"net/http"
	"os"
	"sync"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Reader"
	"github.com/HadasAmar/analytics-load-tool/Runner"
	"github.com/HadasAmar/analytics-load-tool/Simulator"
	"github.com/HadasAmar/analytics-load-tool/configuration"
	Formatter "github.com/HadasAmar/analytics-load-tool/formatter"
	"github.com/HadasAmar/analytics-load-tool/metrics"
	mongoLogger "github.com/HadasAmar/analytics-load-tool/mongo"
)

func main() {
	ctx := context.Background()
	metrics.Init()
	defer metrics.Client.Close()

	if err := configuration.InitGlobalConsul(); err != nil {
		log.Fatalf("Failed to initialize Consul: %v", err)
	}

	http.HandleFunc("/api/input-language", configuration.InputLanguageHandler)
	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}
	go func() {
		log.Printf("HTTP server listening on :%s", port)
		if err := http.ListenAndServe(":"+port, nil); err != nil {
			log.Fatalf("HTTP server failed: %v", err)
		}
	}()

	logFilePath, err := configuration.GetLogFilePath(configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("Failed to get log file path from Consul: %v", err)
	}
	reader, err := Reader.GetReaderFromConsul(logFilePath, configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("Failed to get reader from Consul: %v", err)
	}

	overrideTable, err := configuration.GetOverrideTable(configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("Failed to get override table: %v", err)
	}

	logger, err := mongoLogger.NewMongoLogger(
		"mongodb+srv://shilat3015:sh0533143015@cluster0.q7ov2xk.mongodb.net/?tlsInsecure=true",
		"logsdb", "records", "progress",
	)
	if err != nil {
		log.Fatalf("Failed to connect to MongoDB: %v", err)
	}

	batchSize, err := configuration.GetBatchSize(configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("Failed to get batch size from Consul: %v", err)
	}
	lastID, err := configuration.GetLastProcessedID()
	if err != nil {
		log.Fatalf("Failed to get last processed ID from Consul: %v", err)
	}
	log.Printf("Using batch size: %d", batchSize)
	log.Printf("Resuming from ID: %s", lastID.Hex())

	if err := logger.DeleteAllRecords(); err != nil {
		log.Fatalf("Failed to delete all records: %v", err)
	}

	rawRecords, err := reader.Read(logFilePath)
	if err != nil {
		log.Fatalf("Failed to read records from file: %v", err)
	}
	log.Printf("Read %d raw records from file", len(rawRecords))
	for _, rec := range rawRecords {
		if rec == nil || rec.Query == "" {
			continue
		}
		rec.Parsed = nil
		if err := logger.SaveLog(rec); err != nil {
			log.Printf("Failed to save record: %v", err)
		}
	}
	log.Printf("Inserted %d raw records to Mongo", len(rawRecords))

	runner, err := Runner.NewBigQueryRunner(ctx, "platform-hackaton-2025", "./credentials.json")
	if err != nil {
		log.Fatalf("Could not create BigQuery client: %v", err)
	}
	log.Printf("BigQuery client created successfully")

	var sqlFormatter Formatter.Formatter = &Formatter.SQLFormatter{}
	var wg sync.WaitGroup
	var lastTimestamp *time.Time

	for batchNum := 1; ; batchNum++ {
		start := time.Now()

		rawBatch, latestID, err := logger.ReadLogsAfterWithLimit(lastID, batchSize)
		if err != nil {
			log.Fatalf("Failed to read batch: %v", err)
		}
		if len(rawBatch) == 0 {
			break
		}

		parsedBatch, err := Reader.ReadParsedRecordsFromMongo(rawBatch)
		if err != nil {
			log.Fatalf("Failed to parse batch: %v", err)
		}

		log.Printf("Sending batch %d with %d records...", batchNum, len(parsedBatch))

		err = Simulator.SimulateReplay(parsedBatch, sqlFormatter, runner, ctx, overrideTable, &wg, lastTimestamp)
		if err != nil {
			log.Printf("Simulation failed on batch %d: %v", batchNum, err)
		} else {
			metrics.Success(batchNum, len(parsedBatch))
		}

		last := parsedBatch[len(parsedBatch)-1]
		if last != nil {
			lastID = latestID
			lastTimestamp = &last.LogTime
			_ = configuration.SaveLastProcessedID(lastID)
			log.Printf("Updated checkpoint to: %s", lastID.Hex())
		}
		metrics.Timing(start, "loadtool.batch.duration")
	}

	wg.Wait()
}
