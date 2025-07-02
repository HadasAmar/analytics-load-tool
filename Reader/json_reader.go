package Reader

import (
	"encoding/json"
	"os"

	"github.com/HadasAmar/analytics-load-tool/Model"
)

// ReadJSONFile קוראת קובץ JSON ומחזירה []*ParsedRecord
func ReadJSONFile(filename string) ([]*Model.ParsedRecord, error) {
	data, err := os.ReadFile(filename)
	if err != nil {
		return nil, err
	}

	var input []struct {
		Timestamp string          `json:"timestamp"`
		IP        string          `json:"ip"`
		Query     Model.QueryData `json:"query"`
	}

	if err := json.Unmarshal(data, &input); err != nil {
		return nil, err
	}

	var result []*Model.ParsedRecord
	for _, row := range input {
		queryBytes, _ := json.Marshal(row.Query)
		record := ParseRawRecord(row.Timestamp, row.IP, string(queryBytes))
		if record != nil {
			result = append(result, record)
		}
	}

	return result, nil
}

// JSONReader מממש את FileReader
type JSONReader struct{}

func (j JSONReader) Read(filename string) ([]*Model.ParsedRecord, error) {
	return ReadJSONFile(filename)
}
