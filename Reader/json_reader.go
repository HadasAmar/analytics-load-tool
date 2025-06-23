package Reader

import (
	"encoding/json"
	"fmt"
	"os"
	"time"

	"github.com/HadasAmar/analytics-load-tool.git/Model"
	"github.com/HadasAmar/analytics-load-tool.git/Parser"
)

func ProcessJSONFile(filename string) {
	data, err := os.ReadFile(filename)
	if err != nil {
		fmt.Println("שגיאה בקריאת קובץ:", err)
		return
	}

	var records []struct {
		Timestamp string          `json:"timestamp"`
		IP        string          `json:"ip"`
		Query     Model.QueryData `json:"query"`
	}

	err = json.Unmarshal(data, &records)
	if err != nil {
		fmt.Println("שגיאת JSON:", err)
		return
	}

	// פתיחת קובץ לפלט JSONL
	outputFile, err := os.OpenFile("output.jsonl", os.O_CREATE|os.O_WRONLY|os.O_TRUNC, 0644)
	if err != nil {
		fmt.Println("שגיאה בפתיחת קובץ הפלט:", err)
		return
	}
	defer outputFile.Close()

	for i, rec := range records {
		timestamp, err := time.Parse(time.RFC3339, rec.Timestamp)
		if err != nil {
			fmt.Printf("שגיאת זמן בשורה %d: %v\n", i+1, err)
			continue
		}

		entry := Parser.FromQueryRecord(timestamp, rec.IP, rec.Query)

		jsonBytes, err := json.Marshal(entry)
		if err != nil {
			fmt.Printf("שגיאת המרה ל-JSON בשורה %d: %v\n", i+1, err)
			continue
		}

		_, err = outputFile.WriteString(string(jsonBytes) + "\n")
		if err != nil {
			fmt.Printf("שגיאה בכתיבת שורה %d לקובץ: %v\n", i+1, err)
		}
	}
}
