package main

import (
	"context"
	"fmt"
	"log"
	"os"

	formatter "github.com/HadasAmar/analytics-load-tool/Formatter"
	"github.com/HadasAmar/analytics-load-tool/Reader"
	"github.com/HadasAmar/analytics-load-tool/Runner"
	Simulator "github.com/HadasAmar/analytics-load-tool/Simulator"
	"github.com/HadasAmar/analytics-load-tool/configuration"
)

func main() {
	// :star:️ שינוי: קלט עם שם טבלה
	if len(os.Args) < 3 {
		log.Fatal("Usage: go run ./cmd/main.go <log_file> <table>")
	}
	logFile := os.Args[1]
	overrideTable := os.Args[2] // ← הוספה חדשה: שם טבלה מה-CLI
	// :large_green_circle: אתחול קונסול – מוקדם!
	err := configuration.InitGlobalConsul()
	if err != nil {
		log.Fatalf(":x: Failed to initialize Consul: %v", err)
	}
	// :white_check_mark: עכשיו מותר לקרוא עם GlobalConsulClient
	records, err := Reader.ReadRecordsFromConsul(logFile, configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf(":x: Failed to read records: %v", err)
	}
	commands := make(chan string)
	// סימולציה ברקע
	go func() {
		errSimulateReplay := Simulator.SimulateReplayWithControl(records, commands)
		if errSimulateReplay != nil {
			log.Fatalf("error simulating: %v", errSimulateReplay)
		}
	}()
	// לולאת שליטה מהמשתמש
	for {
		var input string
		fmt.Println("enter command [pause/resume/stop]:")
		fmt.Scanln(&input)
		if input == "pause" || input == "resume" || input == "stop" {
			commands <- input
		}
		if input == "stop" {
			break
		}
	}
	// יצירת קובץ SQL
	f, err := os.Create("output.sql")
	if err != nil {
		log.Fatal(err)
	}
	defer f.Close()
	ctx := context.Background()
	projectID := "platform-hackaton-2025"
	credsPath := "./credentials.json"
	runner, err := Runner.NewBigQueryRunner(ctx, projectID, credsPath)
	if err != nil {
		log.Fatalf(":x: Failed to create Runner: %v", err)
	}
	// כתיבת שאילתות לקובץ
	count := 0
	raw := ""
	for _, record := range records {
		if record == nil || record.Parsed == nil {
			continue
		}
		// :star:️ שינוי חשוב: דריסת שם הטבלה מתוך מה שהמשתמש ביקש
		if overrideTable != "" {
			record.Parsed.TableName = overrideTable // ← הוספה חדשה
		}
		raw = formatter.BuildSQLQuery(record.Parsed)
		pretty := formatter.PrettySQL(raw)
		count++
		_, err := f.WriteString(pretty + "\n\n")
		if err != nil {
			log.Fatal(err)
		}
	}
	// שליחה לביגקווארי
	duration, jobID, err := runner.RunRawQuery(ctx, raw)
	if err != nil {
		log.Fatalf(":x: Query failed: %v", err)
	}
	log.Printf(":checkered_flag: Finished successfully | Duration: %s | Job ID: %s", duration, jobID)
}
