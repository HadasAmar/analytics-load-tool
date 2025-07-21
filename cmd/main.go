// cmd/main.go
package main

import (
    "context"
    "log"
    "sync"

    "github.com/HadasAmar/analytics-load-tool/Reader"
    "github.com/HadasAmar/analytics-load-tool/Runner"
    "github.com/HadasAmar/analytics-load-tool/Simulator"
    "github.com/HadasAmar/analytics-load-tool/configuration"
    Formatter "github.com/HadasAmar/analytics-load-tool/formatter"
    mongoLogger "github.com/HadasAmar/analytics-load-tool/mongo"
)

func main() {
    ctx := context.Background()

    // Initialize Consul client
    if err := configuration.InitGlobalConsul(); err != nil {
        log.Fatalf("❌ Failed to initialize Consul: %v", err)
    }

    // Get log file path and reader from Consul
    logFilePath, err := configuration.GetLogFilePath(configuration.GlobalConsulClient)
    if err != nil {
        log.Fatalf("❌ Failed to get log file path from Consul: %v", err)
    }
    reader, err := Reader.GetReaderFromConsul(logFilePath, configuration.GlobalConsulClient)
    if err != nil {
        log.Fatalf("❌ Failed to get reader from Consul: %v", err)
    }

    // Get override table name from Consul
    overrideTable, err := configuration.GetOverrideTable(configuration.GlobalConsulClient)
    if err != nil {
        log.Fatalf("❌ Failed to get override table: %v", err)
    }

    // Connect to MongoDB and create logger
    logger, err := mongoLogger.NewMongoLogger(
        "mongodb+srv://shilat3015:sh0533143015@cluster0.q7ov2xk.mongodb.net/?tlsInsecure=true",
        "logsdb", "records", "progress",
    )
    if err != nil {
        log.Fatalf("❌ Failed to connect to MongoDB: %v", err)
    }

    // Get batch size and last processed ID from Consul
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

    // Uncomment to delete all records in MongoDB (for testing purposes)
    if err := logger.DeleteAllRecords(); err != nil {
        log.Fatalf("❌ Failed to delete all records: %v", err)
    }

    // Read raw records from file and save to MongoDB
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

    // Create BigQuery runner
    runner, err := Runner.NewBigQueryRunner(ctx, "platform-hackaton-2025", "./credentials.json")
    if err != nil {
        log.Fatalf("❌ Could not create BigQuery client: %v", err)
    }
    log.Printf("✅ BigQuery client created successfully")

    // Initialize SQL formatter
    var sqlFormatter Formatter.Formatter = &Formatter.SQLFormatter{}

    // WaitGroup for all query goroutines
    var wg sync.WaitGroup

    // Process records in batches
    for batchNum := 1; ; batchNum++ {
        // Get logs from Mongo after lastID with limit
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

        // Run grouped replay, passing the WaitGroup
        if err := Simulator.SimulateReplayGrouped(parsedBatch, sqlFormatter, runner, ctx, overrideTable, &wg); err != nil {
            log.Printf("⚠️ Simulation failed on batch %d: %v", batchNum, err)
        }

        // Update lastID checkpoint
        lastID = latestID
        if err := configuration.SaveLastProcessedID(lastID); err != nil {
            log.Printf("⚠️ Failed to save last processed ID: %v", err)
        }
        log.Printf("💾 Updated checkpoint to: %s", lastID.Hex())
    }

    // Wait for all pending queries to complete
    wg.Wait()
    log.Println("🏁 Finished all batches")
}
