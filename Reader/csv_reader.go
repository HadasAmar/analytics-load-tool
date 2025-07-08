package Reader

import (
	"encoding/csv"
	"encoding/json"
	"os"
	"strings"

	"github.com/HadasAmar/analytics-load-tool/Model"
)

// ReadCSVFile reads a CSV file and returns a list of ParsedRecord
func ReadCSVFile(filename string) ([]*Model.ParsedRecord, error) {
	file, err := os.Open(filename)
	if err != nil {
		return nil, err
	}
	defer file.Close()

	reader := csv.NewReader(file)
	records, err := reader.ReadAll()
	if err != nil || len(records) < 1 {
		return nil, err
	}

	headers := records[0]
	var result []*Model.ParsedRecord

	for _, row := range records[1:] {
		if len(row) != len(headers) {
			continue
		}

		obj := map[string]string{}
		for i, h := range headers {
			obj[h] = row[i]
		}

		// Convert map to JSON
		jsonBytes, _ := json.Marshal(obj)

		// Extract IP and Timestamp fields (if exist)
		ip := strings.TrimSpace(obj["ip"])
		ts := obj["log_time"]

		// Create ParsedRecord via ParseRawRecord
		record := ParseRawRecord(ts, ip, string(jsonBytes))
		if record != nil {
			result = append(result, record)
		}
	}

	return result, nil
}

// CSVReader implements the FileReader interface
type CSVReader struct{}

func (c CSVReader) Read(filename string) ([]*Model.ParsedRecord, error) {
	return ReadCSVFile(filename)
}
