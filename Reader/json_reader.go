package Reader

import (
	"encoding/json"
	"os"
	"time"
	"github.com/HadasAmar/analytics-load-tool/Model"
)
func parseTime(s string) time.Time {
	t, _ := time.Parse(time.RFC3339, s)
	return t
}

// ReadJSONFile reads a JSON file and returns []*ParsedRecord
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
		record := &Model.ParsedRecord{
	LogTime: parseTime(row.Timestamp),
	IP:      row.IP,
	Query:   string(queryBytes),
	Parsed:  nil,
}

		if record != nil {
			result = append(result, record)
		}
	}

	return result, nil
}

// JSONReader implements the FileReader interface
type JSONReader struct{}

func (j JSONReader) Read(filename string) ([]*Model.ParsedRecord, error) {
	return ReadJSONFile(filename)
}
