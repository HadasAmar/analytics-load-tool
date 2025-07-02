package Reader

import (
	"encoding/csv"
	"encoding/json"
	"os"
	"strings"
	

	"github.com/HadasAmar/analytics-load-tool/Model"
)

// ReadCSVFile קוראת קובץ CSV ומחזירה רשימת ParsedRecord
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

		// הפיכת map ל־JSON
		jsonBytes, _ := json.Marshal(obj)

		// חילוץ שדות IP ו־Timestamp (אם קיימים)
		ip := strings.TrimSpace(obj["ip"])
		ts := obj["log_time"]

		// יצירת ParsedRecord דרך ParseRawRecord
		record := ParseRawRecord(ts, ip, string(jsonBytes))
		if record != nil {
			result = append(result, record)
		}
	}

	return result, nil
}

// CSVReader מממש את הממשק FileReader
type CSVReader struct{}

func (c CSVReader) Read(filename string) ([]*Model.ParsedRecord, error) {
	return ReadCSVFile(filename)
}
