package Parser

import (
	"encoding/json"
	"fmt"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Model"
	"github.com/HadasAmar/analytics-load-tool/Reader"
)

type LogEntry = Model.LogEntry

func ParseRecord(r Reader.RawRecord) *LogEntry {
	var query Model.QueryData
	fmt.Println("📥 Raw JSON:", r.RawQuery)
	err := json.Unmarshal([]byte(r.RawQuery), &query)
	if err != nil {
		fmt.Println("Error parsing query:", err)
		return nil
	}
	t, err := time.Parse(time.RFC3339, r.Timestamp)
	if err != nil {
		fmt.Println("Error parsing timestamp:", err)
		return nil
	}
	fmt.Println("Parsed query:", query)
	entry := FromQueryRecord(t, r.IP, query)
	return &entry
}
