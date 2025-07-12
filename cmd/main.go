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
	// ⚠️ קלט מה־CLI: קובץ לוגים ושם טבלה
	if len(os.Args) < 3 {
		log.Fatal("Usage: go run ./cmd/main.go <log_file> <table>")
	}
	logFile := os.Args[1]
	overrideTable := os.Args[2]

	// אתחול Consul
	err := configuration.InitGlobalConsul()
	if err != nil {
		log.Fatalf("❌ Failed to initialize Consul: %v", err)
	}

	// קריאת לוגים מה־Consul
	records, err := Reader.ReadRecordsFromConsul(logFile, configuration.GlobalConsulClient)
	if err != nil {
		log.Fatalf(":x: Failed to read records: %v", err)
	}

	// הדמיית שליחה
	commands := make(chan string)
	go func() {
		errSimulateReplay := Simulator.SimulateReplayWithControl(records, commands)
		if errSimulateReplay != nil {
			log.Fatalf("error simulating: %v", errSimulateReplay)
		}
	}()

	// קונטרול להרצה
	for {
		var input string
		fmt.Println("enter command [pause/resume/stop]:")
		fmt.Scanln(&input)
		if input == "stop" {
			break
		}
		if input == "pause" || input == "resume" {
			commands <- input
		}
	}

	// יצירת קובץ SQL
	f, err := os.Create("output.sql")
	if err != nil {
		log.Fatal(err)
	}
	defer f.Close()

	// אתחול BigQuery Runner
	ctx := context.Background()
	projectID := "platform-hackaton-2025"
	credsPath := "./credentials.json"

	runner, err := Runner.NewBigQueryRunner(ctx, projectID, credsPath)
	if err != nil {
		log.Printf("❌ Skipping BigQuery execution – client creation failed: %v", err)
		return
	}

	// יצירת formatter גנרי
	var sqlFormatter formatter.Formatter = &formatter.SQLFormatter{}

	// כתיבה לקובץ + שליחה לביגקווארי
	count := 0
	var raw string

	for _, record := range records {
		if record == nil || record.Parsed == nil {
			continue
		}

		// דריסת שם הטבלה
		if overrideTable != "" {
			record.Parsed.TableName = overrideTable
		}

		result, err := sqlFormatter.Format(record.Parsed)
		if err != nil {
			log.Printf("⚠️ Format error: %v", err)
			continue
		}

		raw, _ = result.(string)
		pretty := formatter.PrettySQL(raw)

		_, err = f.WriteString(pretty + "\n\n")
		if err != nil {
			log.Fatal(err)
		}
		count++
	}
	log.Printf("✅ Created output.sql with %d queries", count)

	// שליחה לשאילתה אחת אחרונה (raw)
	duration, jobID, err := runner.RunRawQuery(ctx, raw)
	if err != nil {
		log.Fatalf(":x: Query failed: %v", err)
	}
	log.Printf(":checkered_flag: Finished successfully | Duration: %s | Job ID: %s", duration, jobID)
}
