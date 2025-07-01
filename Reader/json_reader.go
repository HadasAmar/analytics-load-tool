package Reader

import (
	"encoding/json"
	"github.com/HadasAmar/analytics-load-tool/Model"
	"os"
)

func ReadJSONFile(filename string) ([]RawRecord, error) {
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

	var result []RawRecord
	for _, row := range input {
		queryBytes, _ := json.Marshal(row.Query)
		pq, _ := ParseRawQuery(string(queryBytes))
		result = append(result, RawRecord{
			Timestamp:   row.Timestamp,
			IP:          row.IP,
			RawQuery:    string(queryBytes),
			ParsedQuery: pq,
		})

	}
	return result, nil
}

type JSONReader struct{}

func (j JSONReader) Read(filename string) ([]RawRecord, error) {
	return ReadJSONFile(filename)
}
