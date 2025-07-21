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

	// --- Consul initialisation ---
	if err := configuration.InitGlobalConsul(); err != nil {
		log.Fatalf("failed to initialise Consul: %v", err)
	}

	// --- Consul configuration values ---
	logFilePath, err := configuration.GetLogFilePath(configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("failed to get log file path: %v", err)
	}

	reader, err := Reader.GetReaderFromConsul(logFilePath, configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("failed to get reader: %v", err)
	}

	overrideTable, err := configuration.GetOverrideTable(configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("failed to get override table: %v", err)
	}

	batchSize, err := configuration.GetBatchSize(configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("failed to get batch size: %v", err)
	}
speed := configuration.GetSpeedFactor(configuration.GlobalConsulClient)

	// --- Mongo logger ---
	logger, err := mongoLogger.NewMongoLogger(
		"mongodb+srv://shilat3015:sh0533143015@cluster0.q7ov2xk.mongodb.net/?tlsInsecure=true",
		"logsdb", "records", "progress",
	)
	if err != nil {
		log.Fatalf("failed to connect to MongoDB: %v", err)
	}

	// --- BigQuery runner ---
	runner, err := Runner.NewBigQueryRunner(ctx, "platform-hackaton-2025", "./credentials.json")
	if err != nil {
		log.Fatalf("failed to create BigQuery client: %v", err)
	}

	// --- Prepare formatter and WaitGroup ---
	var sqlFormatter Formatter.Formatter = &Formatter.SQLFormatter{}
	var wg sync.WaitGroup

	// --- Command channel for Pause-Resume-Stop (pass nil if you do not need it) ---
	cmdChan := make(chan string)

	// example: automatically pause after 30s, resume after another 10s
	/*
	go func() {
		time.Sleep(30 * time.Second)
		cmdChan <- Simulator.Pause
		time.Sleep(10 * time.Second)
		cmdChan <- Simulator.Resume
	}()
	*/

	// --- Initial checkpoint ---
	lastID, err := configuration.GetLastProcessedID()
	if err != nil {
		log.Fatalf("failed to get last processed ID: %v", err)
	}
	log.Printf("resuming from ID %s", lastID.Hex())

	// --- Ingest raw file to Mongo once (idempotent) ---
	rawRecordsFromFile, err := reader.Read(logFilePath)
	if err != nil {
		log.Fatalf("failed to read file: %v", err)
	}
	for _, rec := range rawRecordsFromFile {
		if rec == nil || rec.Query == "" {
			continue
		}
		rec.Parsed = nil
		_ = logger.SaveLog(rec)
	}

	// --- Batch processing loop ---
	for batchNum := 1; ; batchNum++ {

		rawBatch, latestID, err := logger.ReadLogsAfterWithLimit(lastID, batchSize)
		if err != nil {
			log.Fatalf("failed to read batch: %v", err)
		}
		if len(rawBatch) == 0 {
			break // no more data
		}

		parsedBatch, err := Reader.ReadParsedRecordsFromMongo(rawBatch)
		if err != nil {
			log.Fatalf("failed to parse batch: %v", err)
		}

		log.Printf("sending batch %d with %d records", batchNum, len(parsedBatch))

		// --- New parallel simulator ---
		err = Simulator.SimulateReplayInGroups(
			parsedBatch,
			sqlFormatter,
			runner,
			ctx,
			overrideTable,
			speed,
			cmdChan, // replace with nil to disable external control
			&wg,
		)
		if err != nil {
			log.Printf("simulation failed on batch %d: %v", batchNum, err)
		}

		// --- Save checkpoint ---
		lastID = latestID
		_ = configuration.SaveLastProcessedID(lastID)
	}

	wg.Wait() // wait for every goroutine launched by simulator to finish
}
