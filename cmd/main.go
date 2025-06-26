package main

import (
	"context"

	"log"
	"os"
	"path/filepath"

	"github.com/HadasAmar/analytics-load-tool/Model"
	"github.com/HadasAmar/analytics-load-tool/Parser"
	"github.com/HadasAmar/analytics-load-tool/Reader"
	"github.com/HadasAmar/analytics-load-tool/Simulator"
	"github.com/HadasAmar/analytics-load-tool/Writer"
)

func main() {
	if len(os.Args) < 2 {
		log.Println("חסר קובץ קלט כפרמטר. Usage: go run main.go <filename>")
		return
	}

	filename := os.Args[1]
	log.Printf(" טוען קובץ קלט: %s\n", filename)

	rawRecords, err := Reader.ReadFile(filename)
	if err != nil {
		log.Fatalf("שגיאה בקריאת הקובץ: %v", err)
	}
	log.Printf("✅ נטענו %d רשומות גולמיות\n", len(rawRecords))

	// Parse records
	entries := []Model.LogEntry{}
	ext := filepath.Ext(filename)
	log.Printf("🔍 מנתח את הרשומות לפי סיומת: %s\n", ext)

	for i, raw := range rawRecords {
		var entry *Model.LogEntry
		if ext == ".csv" {
			entry = Parser.ParseCSVRaw(raw)
		} else {
			entry = Parser.ParseRecord(raw)
		}
		if entry != nil {
			entries = append(entries, *entry)
		} else {
			log.Printf("  שגיאה בפירוק רשומה %d – דילוג\n", i)
		}
	}
	log.Printf("הומרו %d רשומות לוג מנותחות\n", len(entries))

	// סימולציה
	log.Println("⏱️ מתחיל סימולציה בקצב 10x...")
	sim := Simulator.New(10.0)

	// כתיבה ל-BQ
	log.Println("מתחבר ל-BigQuery...")
	ctx := context.Background()
	writer, err := Writer.NewBQWriter(ctx,
		"../credentials.json",
		"platform-hackaton-2025",
		"My_Try",
		"loadtool_logs",
	)
	if err != nil {
		log.Fatalf(" שגיאה בהגדרת יעד BigQuery: %v", err)
	}
	log.Println(" התחברות ל-BigQuery הושלמה")

	// המרה ל-BQ וכתיבה
	var bqRecords []*Writer.LogRecord
	count := 0
	for entry := range sim.Stream(entries) {
		bqRecord := Writer.FromLogEntry(entry)
		bqRecords = append(bqRecords, bqRecord)
		count++
		if count%10 == 0 {
			log.Printf(" %d רשומות הוכנו לכתיבה...", count)
		}
	}
	log.Printf("✅ הסתיים שלב הסימולציה. נשלחות %d רשומות ל-BQ", len(bqRecords))

	if err := writer.Write(bqRecords); err != nil {
		log.Fatalf("שגיאה בכתיבה ל-BigQuery: %v", err)
	}
	log.Println(" כל הרשומות נכתבו בהצלחה ל-BigQuery 🎉")
}
