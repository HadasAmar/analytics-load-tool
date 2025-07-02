package main

import (
	"fmt"
	"log"

	formatter  "github.com/HadasAmar/analytics-load-tool/formatter"
	"github.com/HadasAmar/analytics-load-tool/Reader"
)

func main() {
	// טוען את הרידר לקובץ הלוג
	reader, err := Reader.GetReader("druid-demo.log")
	if err != nil {
		log.Fatalf("❌ שגיאה באיתור הקורא: %v", err)
	}

	// קריאת הרשומות מהקובץ
	records, err := reader.Read("druid-demo.log")
	if err != nil {
		log.Fatalf("❌ שגיאה בקריאת קובץ: %v", err)
	}

	count := 0
	for _, record := range records {
		if record == nil || record.Parsed == nil {
			continue
		}

		// יצירת SQL → עיצוב → צבעים
		raw := formatter.BuildSQLQuery(record.Parsed)
		pretty := formatter.PrettySQL(raw)
		colored := formatter.ColorizeSQL(pretty)

		// הדפסת השאילתה הצבעונית
		count++
		fmt.Printf("%s✅ שורה %d:%s\n\n", formatter.Green, count, formatter.Reset)
		fmt.Println(colored)
		fmt.Println()
	}
}
