package main

import (
	"context"
	"fmt"
	"github.com/HadasAmar/analytics-load-tool/Model"
	"github.com/HadasAmar/analytics-load-tool/Output"
	"github.com/HadasAmar/analytics-load-tool/Parser"
	"github.com/HadasAmar/analytics-load-tool/Reader"
	"github.com/HadasAmar/analytics-load-tool/Simulator"
	"github.com/HadasAmar/analytics-load-tool/Writer"
	"log"
	"os"
	"path/filepath"
	"time"
	"github.com/hashicorp/consul/api"
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

	entries := []Model.LogEntry{}
	ext := filepath.Ext(filename)

	if ext == ".csv" {
		for _, raw := range rawRecords {
			entry := Parser.ParseCSVRaw(raw)
			if entry != nil {
				entries = append(entries, *entry)
			}
		}
	} else {
		for _, raw := range rawRecords {
			entry := Parser.ParseRecord(raw)
			if entry != nil {
				entries = append(entries, *entry)
			}
		}
	}

	// שלב סימולציה
	sim := Simulator.New(10.0)

	// הגדרת יעד
	ctx := context.Background()
	w, err := Writer.NewBQWriter(ctx,
		"credentials.json",
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

	// כתיבה לפלט jsonl
	for e := range sim.Stream(entries) {
		Output.WriteJSONL("output.jsonl", e)
	}

	// שליחה ל-BQ (רק הרשומה הבודדת)
	if err := w.Write([]*Writer.LogRecord{record}); err != nil {
		log.Fatalf("❌ שגיאה בכתיבה ל-BQ: %v", err)
	}

	//config..........
	    // 1. קונפיגורציית ברירת מחדל (מתחברת ל-localhost:8500)
    config := api.DefaultConfig()

    // 2. יצירת לקוח Consul
    client, err := api.NewClient(config)
    if err != nil {
        panic(err)
    }

    // 3. קריאה ל-Key/Value
    kv := client.KV()
    pair, _, err := kv.Get("loadtool/config/speed_factor", nil)
    if err != nil {
        panic(err)
    }

    // 4. בדיקה אם הערך קיים
    if pair == nil {
        fmt.Println("Dont found value in consul")
    } else {
        fmt.Printf("The value from consul: %s\n", string(pair.Value))
    }

}