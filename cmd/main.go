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
	if len(os.Args) < 2 {
		log.Fatal("Pass a path to the log file as a parameter")
	}
	logFile := os.Args[1]

	// 🟢 אתחול קונסול – מוקדם!
	err := configuration.InitGlobalConsul()
	if err != nil {
		log.Fatalf("❌ Failed to initialize Consul: %v", err)
	}

	// ✅ עכשיו מותר לקרוא עם GlobalConsulClient
	records, err := Reader.ReadLogFile(logFile)
	if err != nil {
		log.Fatalf("❌ Failed to read records: %v", err)
	}

	commands := make(chan string)

	// start the simulator in a goroutine
	go func() {
		errSimulateReplay := Simulator.SimulateReplayWithControl(records, commands)
		if errSimulateReplay != nil {
			log.Fatalf("error simulating: %v", errSimulateReplay)
		}
	}()

	// control loop to handle user commands
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

	// יצירת context
	ctx := context.Background()

	// פרטים שצריך למלא לפי הסביבה שלך
	projectID := "platform-hackaton-2025"
	credsPath := "./credentials.json"

	// יצירת Runner עם credentials
	runner, err := Runner.NewBigQueryRunner(ctx, projectID, credsPath)
	if err != nil {
		log.Fatalf("❌ Failed to create Runner: %v", err)
	}

	// כתיבה לקובץ SQL
	count := 0
	raw := ""
	for _, record := range records {
		if record == nil || record.Parsed == nil {
			continue
		}

		raw = formatter.BuildSQLQuery(record.Parsed)
		pretty := formatter.PrettySQL(raw)

		count++

		_, err := f.WriteString(pretty + "\n\n")
		if err != nil {
			log.Fatal(err)
		}
	}

	// הרצה בפועל
	duration, jobID, err := runner.RunRawQuery(ctx, raw)
	if err != nil {
		log.Fatalf("❌ Query failed: %v", err)
	}
	log.Printf("🏁 Finished successfully | Duration: %s | Job ID: %s", duration, jobID)
}
