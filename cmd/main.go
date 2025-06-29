package main

import (
	"encoding/json"
	"fmt"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Model"
	"github.com/HadasAmar/analytics-load-tool/bq_adapter"
)

func main() {
	entry := Model.LogEntry{
		CampaignID:  "camp123",
		MediaSource: "google",
		LogTime:     time.Now(),
		IP:          "1.2.3.4",
		Installs:    5,
	}

	bq, err := bq_adapter.ConvertLogEntryToBQ(entry)
	if err != nil {
		fmt.Println("שגיאה:", err)
		return
	}

	// הדפסה כתוצאה
	b, _ := json.MarshalIndent_
