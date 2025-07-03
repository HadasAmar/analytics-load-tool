package main

import (
	"fmt"
	"log"
	"os"

	"github.com/HadasAmar/analytics-load-tool/Reader"
	Simulator "github.com/HadasAmar/analytics-load-tool/Simulator"
	formatter "github.com/HadasAmar/analytics-load-tool/formatter"
)

func main() {
	// load the reader for the log file
	reader, err := Reader.GetReader("../druid-demo.log")
	if err != nil {
		log.Fatalf("❌ שגיאה באיתור הקורא: %v", err)
	}

	// reads the log file and parses it into records
	records, err := reader.Read("../druid-demo.log")
	if err != nil {
		log.Fatalf("❌ שגיאה בקריאת קובץ: %v", err)
	}

	events, err := Simulator.CalculateReplayEvents(records)
	if err != nil {
		log.Fatalf("❌ simulator error: %v", err)
	}

	// print the delay and timestamp of each event
	for _, e := range events {
		fmt.Printf("at: %v, wait: %v\n", e.Timestamp, e.Delay)
	}

	// count := 0
	// for _, record := range records {
	// 	if record == nil || record.Parsed == nil {
	// 		continue
	// 	}

	// // יצירת SQL → עיצוב → צבעים
	// raw := formatter.BuildSQLQuery(record.Parsed)
	// pretty := formatter.PrettySQL(raw)
	// colored := formatter.ColorizeSQL(pretty)

	// // הדפסת השאילתה הצבעונית
	// count++
	// fmt.Printf("%s✅ שורה %d:%s\n\n", formatter.Green, count, formatter.Reset)
	// fmt.Println(colored)
	// fmt.Println()

	f, err := os.Create("output.sql")
	if err != nil {
		log.Fatal(err)
	}
	defer f.Close()

	count := 0
	for _, record := range records {
		if record == nil || record.Parsed == nil {
			continue
		}

		raw := formatter.BuildSQLQuery(record.Parsed)
		pretty := formatter.PrettySQL(raw)

		count++

		// כותב לקובץ בלבד
		_, err := f.WriteString(pretty + "\n\n")
		if err != nil {
			log.Fatal(err)
		}
	}

}
