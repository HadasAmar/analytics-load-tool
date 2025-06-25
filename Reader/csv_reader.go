package Reader

import (
	"encoding/csv"
	"os"
	"encoding/json"
)

func ReadCSVFile(filename string) ([]RawRecord, error) {
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
	var result []RawRecord

	for _, row := range records[1:] {
		if len(row) != len(headers) {
			continue
		}

		obj := map[string]string{}
		for i, h := range headers {
			obj[h] = row[i]
		}
		jsonBytes, _ := json.Marshal(obj)

		result = append(result, RawRecord{
			Timestamp: obj["log_time"],
			IP:        obj["ip"],
			RawQuery:  string(jsonBytes),
		})
	}

	return result, nil
}
