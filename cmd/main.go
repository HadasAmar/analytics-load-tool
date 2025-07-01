package main

import (
	"fmt"
	"log"

	"github.com/HadasAmar/analytics-load-tool/Formatter"
	"github.com/HadasAmar/analytics-load-tool/Parser"
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
		parsed := Parser.ParseRawRecord(record)
		if parsed == nil || record.ParsedQuery == nil {
			continue
		}

		// יצירת SQL → עיצוב → צבעים
		raw := Formatter.BuildSQLQuery(record.ParsedQuery)
		pretty := Formatter.PrettySQL(raw)
		colored := Formatter.ColorizeSQL(pretty)

		// הדפסת השאילתה הצבעונית
		count++
		fmt.Printf("%s✅ שורה %d:%s\n\n", Formatter.Green, count, Formatter.Reset)
		fmt.Println(colored)
		fmt.Println()
	}
}
