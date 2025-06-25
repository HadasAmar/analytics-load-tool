package main

import (
	"encoding/json"
	"fmt"
	"log"

	"github.com/shilat214/analytics-load-tool/bq_adapter" // ← עדכני בהתאם לשם המודול שלך אם שונה
)

func main() {
	jsonData := `[
		{"date": "2023-06-23", "country": "IL", "media_source": "facebook", "revenue": 123.45, "event_count": 10},
		{"date": "23-06-2023", "country": "US", "media_source": "google", "revenue": 99.99, "event_count": 5},
		{"date": "2023/06/22", "country": "DE", "media_source": "twitter", "revenue": 0, "event_count": 0},
		{"date": "Jun 21, 2023", "country": "FR", "media_source": "instagram", "revenue": 250.00, "event_count": 15},
		{"date": "invalid-date", "country": "UK", "media_source": "linkedin", "revenue": 50, "event_count": 2},
		{"date": "2023-06-20", "country": "", "media_source": "snapchat", "revenue": 75.5, "event_count": 8}
	]`

	var logs []bq_adapter.LogRecord
	err := json.Unmarshal([]byte(jsonData), &logs)
	if err != nil {
		log.Fatalf("❌ Error unmarshaling JSON: %v", err)
	}

	bqRecords, errs := bq_adapter.ConvertListToBQ(logs)

	fmt.Println("✅ Valid records:")
	for _, r := range bqRecords {
		fmt.Printf("%+v\n", r)
	}

	if len(errs) > 0 {
		fmt.Println("\n⚠️ Errors:")
		for _, e := range errs {
			fmt.Println(e)
		}
	}
}
 