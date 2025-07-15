package Reader

import (	"log"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Model"
)

func ReadParsedRecordsFromMongo(rawRecords []*Model.ParsedRecord) ([]*Model.ParsedRecord, error) {
	var parsedRecords []*Model.ParsedRecord

	for _, record := range rawRecords {
		if record == nil || record.Query == "" {
			log.Println("⚠️ Skipping empty or nil record")
			continue
		}

		parsedRecord := ParseRawRecord(record.LogTime.Format(time.RFC3339), record.IP, record.Query)
		if parsedRecord == nil || parsedRecord.Parsed == nil {
			log.Printf("⚠️ Failed to parse record at %s | Raw:\n%s\n", record.LogTime.Format(time.RFC3339), record.Query)
			continue
		}

		record.Parsed = parsedRecord.Parsed
		parsedRecords = append(parsedRecords, record)
	}

	return parsedRecords, nil
}
