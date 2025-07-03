package main

import (
	"log"
	"os"

	"github.com/HadasAmar/analytics-load-tool/Reader"
	Simulator "github.com/HadasAmar/analytics-load-tool/Simulator"
	formatter "github.com/HadasAmar/analytics-load-tool/formatter"
)

func main() {
	if len(os.Args) < 2 {
		log.Fatal("יש להעביר נתיב לקובץ לוג כפרמטר")
	}
	logFile := os.Args[1]

	// load the reader for the log file

	reader, err := Reader.GetReader(logFile)
	if err != nil {
		log.Fatalf("❌ שגיאה באיתור הקורא: %v", err)
	}

	// reads the log file and parses it into records

	records, err := reader.Read(logFile)
	if err != nil {
		log.Fatalf("❌ שגיאה בקריאת קובץ: %v", err)
	}

	errSimulateReplay := Simulator.SimulateReplay(records)
	if errSimulateReplay != nil {
		log.Fatalf("error simulating: %v", errSimulateReplay)
	}

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

		// creates SQL → formats it → writes to file
		raw := formatter.BuildSQLQuery(record.Parsed)
		pretty := formatter.PrettySQL(raw)

		count++

		_, err := f.WriteString(pretty + "\n\n")
		if err != nil {
			log.Fatal(err)
		}
	}

}
