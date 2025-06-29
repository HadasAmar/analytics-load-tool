package main

import (
	"context"
	"fmt"
	"log"
	"os"

	"github.com/HadasAmar/analytics-load-tool/Model"
	"github.com/HadasAmar/analytics-load-tool/Parser"
	"github.com/HadasAmar/analytics-load-tool/Reader"
	"github.com/HadasAmar/analytics-load-tool/Writer"

	// "path/filepath"
	"time"
)

func main() {
	if len(os.Args) < 2 {
		fmt.Println("Usage: go run main.go <filename>")
		return
	}

	filename := os.Args[1]
	rawRecords, err := Reader.ReadFile(filename)
	if err != nil {
		fmt.Println("Error reading file:", err)
		return
	}

	parsedRecords := []*Model.ParsedRecord{}
	for _, raw := range rawRecords {
		p := Parser.ParseRawRecord(raw)
		if p != nil {
			parsedRecords = append(parsedRecords, p)
		}
	}



	// הגדרת יעד
	ctx := context.Background()
	w, err := Writer.NewBQWriter(ctx,
		"../credentials.json",
		"platform-hackaton-2025",
		"My_Try",
		"loadtool_logs",
	)
	if err != nil {
		log.Fatalf("❌ שגיאה בהגדרת יעד BQ: %v", err)
	}

	// דוגמת כתיבה ל-BQ: רק רשומה אחת קבועה
	record := &Writer.LogRecord{
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

	// שליחה ל-BQ (רק הרשומה הבודדת)
	if err := w.Write([]*Writer.LogRecord{record}); err != nil {
		log.Fatalf("❌ שגיאה בכתיבה ל-BQ: %v", err)
	}
}
