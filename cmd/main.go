package main

import (
	"context"
	"log"

	"github.com/HadasAmar/analytics-load-tool/Model"
	"github.com/HadasAmar/analytics-load-tool/Writer"
)

func main() {
	ctx := context.Background()

	// 🧾 פרטים שצריך למלא לפי הסביבה שלך
	projectID := "platform-hackaton-2025"
	credsPath := "./credentials.json" // קובץ JSON שנמצא בתיקיית הפרויקט

	// יצירת Runner עם credentials
	runner, err := Writer.NewRunner(ctx, projectID, credsPath)
	if err != nil {
		log.Fatalf("❌ Failed to create Runner: %v", err)
	}

	// דוגמה של ParsedQuery – חשוב להתאים לשמות אמיתיים!
	query := &Model.ParsedQuery{
		TableName:     "My_Try.loadtool_logs",
		SelectFields:  []string{"date", "country", "media_source"},
		Aggregations:  []string{"SUM(revenue) AS total_revenue", "COUNT(*) AS total_events"},
		GroupByFields: []string{"date", "country", "media_source"},
		Limit:         intPtr(100),
	}

	// הרצה בפועל
	duration, jobID, err := runner.RunQuery(ctx, query)
	if err != nil {
		log.Fatalf("❌ Query failed: %v", err)
	}

	log.Printf("🏁 Finished successfully | Duration: %s | Job ID: %s", duration, jobID)
}

func intPtr(i int) *int {
	return &i
}
