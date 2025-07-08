package main

import (
	"fmt"
	"log"
	"os"

	formatter "github.com/HadasAmar/analytics-load-tool/Formatter"

	"github.com/HadasAmar/analytics-load-tool/Model"
	"github.com/HadasAmar/analytics-load-tool/Writer"

	"github.com/HadasAmar/analytics-load-tool/Reader"
	Simulator "github.com/HadasAmar/analytics-load-tool/Simulator"
	"github.com/HadasAmar/analytics-load-tool/configuration"
)

func main() {
	if len(os.Args) < 2 {
		log.Fatal("Pass a path to the log file as a parameter")
	}
	logFile := os.Args[1]

	// load the reader for the log file
	reader, err := Reader.GetReader(logFile)
	if err != nil {
		log.Fatalf("❌ error finding the reader: %v", err)
	}

	// reads the log file and parses it into records
	records, err := reader.Read(logFile)
	if err != nil {
		log.Fatalf("❌ error reading the reader: %v", err)
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

	f, err := os.Create("output.sql")
	if err != nil {
		log.Fatal(err)
	}
	defer f.Close()


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
    
	// הרצה בפועל
	duration, jobID, err := runner.RunQuery(ctx, query)
	if err != nil {
		log.Fatalf("❌ Query failed: %v", err)
	}

	log.Printf("🏁 Finished successfully | Duration: %s | Job ID: %s", duration, jobID)
}

func intPtr(i int) *int {
	return &i

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
	err = configuration.InitGlobalConsul()
	if err != nil {
		panic(err)
	}

}
}