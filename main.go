package main

import (
	// "fmt"
	// "os"
	// "path/filepath"

	// "github.com/HadasAmar/analytics-load-tool.git/Reader"
	writer "github.com/HadasAmar/analytics-load-tool.git/Writer"

	"context"
	"log"
	"os"
	"time"
)

func main() {

	// fmt.Println("Args:", os.Args)

	// if len(os.Args) < 2 {
	// 	fmt.Println("Usage: go run main.go <filename>")
	// 	return
	// }

	// filename := os.Args[1]
	// ext := filepath.Ext(filename)

	// switch ext {
	// case ".json":
	// 	Reader.ProcessJSONFile(filename)
	// case ".csv":
	// 	Reader.ProcessCSVFile(filename)
	// case ".log":
	// 	Reader.ProcessLogFile(filename)
	// default:
	// 	fmt.Println("Unsupported file type:", ext)
	// }
	ctx := context.Background()

	// קביעת יעד: bq / sql / file בעתיד
	destination := os.Getenv("DESTINATION")
	if destination == "" {
		destination = "bq" // ברירת מחדל
	}

	var w writer.DestinationWriter
	var err error

	switch destination {
	case "bq":
		log.Println("📍 יעד נבחר: BigQuery")
		w, err = writer.NewBQWriter(ctx,
			"credentials.json",
			"platform-hackaton-2025",
			"My_Try",
			"loadtool_logs",
		)
	default:
		log.Fatalf("⛔ יעד לא נתמך כרגע: %s", destination)
	}

	if err != nil {
		log.Fatalf("שגיאה בפתיחת יעד כתיבה: %v", err)
	}

	// רשומה לדוגמה
	record := &writer.LogRecord{
		CampaignID:          "abc123",
		AppID:               "com.kuku",
		Partner:             "partnerA",
		MediaSource:         "ms",
		UnmaskedMediaSource: "ms",
		AttributionType:     "install",
		Campaign:            "camp_test",
		Source:              "sourceA",
		AdID:                "ad1",
		AdsetID:             "adset1",
		AdsetName:           "set name",
		SiteID:              "site1",
		Ad:                  "adtext",
		LtvCountry:          "US",
		Installs:            15,
		Impressions:         100,
		Clicks:              30,
		Loyals:              3,
		OrganicInstalls:     1,
		OrganicImpressions:  5,
		OrganicClicks:       2,
		OrganicLoyals:       1,
		LogTime:             time.Now(),
	}

	err = w.Write([]*writer.LogRecord{record})
	if err != nil {
		log.Fatalf("שגיאה בהזנת הרשומה: %v", err)
	}
}
