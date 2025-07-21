package main

import (
	"context"
	"log"
	"sync"

	Formatter "github.com/HadasAmar/analytics-load-tool/formatter"
	"github.com/HadasAmar/analytics-load-tool/Reader"
	"github.com/HadasAmar/analytics-load-tool/Runner"
	"github.com/HadasAmar/analytics-load-tool/Simulator"
	"github.com/HadasAmar/analytics-load-tool/configuration"
	mongoLogger "github.com/HadasAmar/analytics-load-tool/mongo"
)

func main() {

	ctx := context.Background()

	// Initialize Consul client
	if err := configuration.InitGlobalConsul(); err != nil {
		log.Fatalf("❌ Failed to initialize Consul: %v", err)
	}

	// Get log file path and reader from Consul (e.g. druid-demo.log)
	logFilePath, err := configuration.GetLogFilePath(configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("❌ Failed to get log file path from Consul: %v", err)
	}

	// Get reader based on input language from Consul (e.g. CSV, JSON, Log)
	reader, err := Reader.GetReaderFromConsul(logFilePath, configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("❌ Failed to get reader from Consul: %v", err)
	}

	// Get override table name from Consul
	overrideTable, err := configuration.GetOverrideTable(configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("❌ Failed to get override table: %v", err)
	}

	//connect to MongoDB and create logger
	//צריך להעביר לקונסול את המשתנים
	logger, err := mongoLogger.NewMongoLogger(
		"mongodb+srv://shilat3015:sh0533143015@cluster0.q7ov2xk.mongodb.net/?tlsInsecure=true",
		"logsdb", "records", "progress",
	)
	if err != nil {
		log.Fatalf("❌ Failed to connect to MongoDB: %v", err)
	}

	// Get batch size from Consul
	batchSize, err := configuration.GetBatchSize(configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("❌ Failed to get batch size from Consul: %v", err)
	}
	log.Printf("🔢 Using batch size: %d", batchSize)

	// Get last processed ID from Consul
	lastID, err := configuration.GetLastProcessedID()
	if err != nil {
		log.Fatalf("❌ Failed to get last processed ID from Consul: %v", err)
	}
	log.Printf("⏱ Resuming from ID: %s", lastID.Hex())

	// Uncomment to delete all records in MongoDB (for testing purposes)
	err=logger.DeleteAllRecords()
	if err != nil {
		log.Fatalf("❌ Failed to delete all records: %v", err)
	}

	// Read raw records from file
	rawRecordsFromFile, err := reader.Read(logFilePath)
	if err != nil {
		log.Fatalf("❌ Failed to read records from file: %v", err)
	}
	log.Printf("📄 Read %d raw records from file", len(rawRecordsFromFile))

	// Save raw records to MongoDB
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

	// create a new BigQuery runner
	//לשמור את המשתנים בקונסול
	runner, err := Runner.NewBigQueryRunner(ctx, "platform-hackaton-2025", "./credentials.json")
	if err != nil {
		log.Fatalf("❌ Could not create BigQuery client: %v", err)
	}

	// Initialize SQL formatter
	var sqlFormatter Formatter.Formatter = &Formatter.SQLFormatter{}

	// wait for all goroutines to finish
	var wg sync.WaitGroup

	// Process records in batches
	for batchNum := 1; ; batchNum++ {

		// get logs from mongo after lastID with limit
		rawBatch, latestID, err := logger.ReadLogsAfterWithLimit(lastID, batchSize)
		if err != nil {
			log.Fatalf("❌ Failed to read batch: %v", err)
		}
		if len(rawBatch) == 0 {
			break
		}

		// Parse raw records
		parsedBatch, err := Reader.ReadParsedRecordsFromMongo(rawBatch)
		if err != nil {
			log.Fatalf("❌ Failed to parse batch: %v", err)
		}

		log.Printf("▶️ Sending batch %d with %d records...", batchNum, len(parsedBatch))

		// Simulate replay of parsed records
		err = Simulator.SimulateReplay(parsedBatch, sqlFormatter, runner, ctx, overrideTable, &wg)
		if err != nil {
			log.Printf("⚠️ Simulation failed on batch %d: %v", batchNum, err)
		}

		// update lastID after processing batch
		last := parsedBatch[len(parsedBatch)-1]
		if last != nil {
			lastID = latestID
			_ = configuration.SaveLastProcessedID(lastID)
			log.Printf("💾 Updated checkpoint to: %s", lastID.Hex())
		}
	}

	//wait for all goroutines to finish
	wg.Wait()
}
