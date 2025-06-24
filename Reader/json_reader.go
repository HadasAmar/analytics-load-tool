package Reader

import (
	"encoding/json"
	"os"
	"github.com/HadasAmar/analytics-load-tool.git/Model"
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
		result = append(result, RawRecord{
			Timestamp: row.Timestamp,
			IP:        row.IP,
			RawQuery:  string(queryBytes),
		})
	}
	return result, nil
}
