package main

import (
	"log"

	"github.com/HadasAmar/analytics-load-tool/Reader"
	"github.com/HadasAmar/analytics-load-tool/configuration"
	mongoLogger "github.com/HadasAmar/analytics-load-tool/mongo"
)

func main() {
	// 1. Initialize Consul
	if err := configuration.InitGlobalConsul(); err != nil {
		log.Fatalf("Failed to initialize Consul: %v", err)
	}

	// 2. Get log file path from Consul
	logFilePath, err := configuration.GetLogFilePath(configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("Failed to get file path from Consul: %v", err)
	}

	// 3. Get MongoDB config from Consul
	mongoCfg, err := configuration.GetMongoConfig(configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("Failed to get Mongo config from Consul: %v", err)
	}

	// 4. Determine file type from Consul
	reader, err := Reader.GetReaderFromConsul(logFilePath, configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf("Failed to get reader: %v", err)
	}

	// 5. Read records from file
	rawRecords, err := reader.Read(logFilePath)
	if err != nil {
		log.Fatalf("Failed to read records from file: %v", err)
	}
	log.Printf("Read %d records from file", len(rawRecords))

	// 6. Connect to MongoDB
	logger, err := mongoLogger.NewMongoLogger(
		mongoCfg.URI,
		mongoCfg.Database,
		mongoCfg.Collection,
	)
	if err != nil {
		log.Fatalf("Failed to connect to MongoDB: %v", err)
	}
	log.Println("Connected to MongoDB successfully")

	// 7. Delete old records
	if err := logger.DeleteAllRecords(); err != nil {
		log.Fatalf("Failed to delete records: %v", err)
	}
	log.Println("All previous records deleted")

	// 8. Upload new records
	for _, rec := range rawRecords {
		if rec == nil || rec.Query == "" {
			continue
		}
		rec.Parsed = nil
		if err := logger.SaveLog(rec); err != nil {
			log.Printf("Failed to save record: %v", err)
		}
	}
	log.Printf("Inserted %d records into MongoDB", len(rawRecords))
}
