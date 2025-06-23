package Reader

import (
	"bufio"
	"encoding/json"
	"fmt"
	"os"
	"strings"
	"time"

	"github.com/HadasAmar/analytics-load-tool.git/Model"
	"github.com/HadasAmar/analytics-load-tool.git/Parser"
)


func ProcessLogFile(filename string) {
	file, err := os.Open(filename)
	if err != nil {
		fmt.Println("שגיאה בפתיחת קובץ:", err)
		return
	}
	defer file.Close()

	scanner := bufio.NewScanner(file)
	lineNumber := 0
	for scanner.Scan() {
		line := scanner.Text()
		lineNumber++

		parts := strings.SplitN(line, "\t", 3)
		if len(parts) != 3 {
			fmt.Printf("שורה %d לא בפורמט תקין\n", lineNumber)
			continue
		}

		timestampStr := parts[0]
		ip := parts[1]
		jsonParts := strings.SplitN(parts[2], "}\t{", 2)
		if len(jsonParts) == 2 {
			jsonParts[0] += "}"
			jsonParts[1] = "{" + jsonParts[1]
		}
		jsonStr := jsonParts[0]

		var query Model.QueryData
		err := json.Unmarshal([]byte(jsonStr), &query)
		if err != nil {
			fmt.Printf("שגיאת JSON בשורה %d: %v\n", lineNumber, err)
			continue
		}

		timestamp, _ := time.Parse(time.RFC3339, timestampStr)

		entry := Model.LogEntry{
			CampaignID:          getDim(query.Dimensions, "campaign_id"),
			Partner:             getDim(query.Dimensions, "partner"),
			AppID:               getDim(query.Dimensions, "app_id"),
			UnmaskedMediaSource: getDim(query.Dimensions, "unmasked_media_source"),
			MediaSource:         getDim(query.Dimensions, "media_source"),
			AttributionType:     getDim(query.Dimensions, "attribution_type"),
			Campaign:            getDim(query.Dimensions, "campaign"),
			Source:              getDim(query.Dimensions, "source"),
			AdID:                getDim(query.Dimensions, "ad_id"),
			AdsetID:             getDim(query.Dimensions, "adset_id"),
			AdsetName:           getDim(query.Dimensions, "adset_name"),
			SiteID:              getDim(query.Dimensions, "site_id"),
			Ad:                  getDim(query.Dimensions, "ad"),
			LtvCountry:          getDim(query.Dimensions, "ltv_country"),
			Installs:            getAgg(query.Aggregations, "installs"),
			Impressions:         getAgg(query.Aggregations, "impressions"),
			Clicks:              getAgg(query.Aggregations, "clicks"),
			Loyals:              getAgg(query.Aggregations, "loyals"),
			OrganicInstalls:     getAgg(query.Aggregations, "organic_installs"),
			OrganicImpressions:  getAgg(query.Aggregations, "organic_impressions"),
			OrganicClicks:       getAgg(query.Aggregations, "organic_clicks"),
			OrganicLoyals:       getAgg(query.Aggregations, "organic_loyals"),
			LogTime:             timestamp,
			IP:                  ip,
		}

		converted := Parser.FromLogEntry(entry)
		fmt.Printf("🚀 LOG => %+v\n", converted)
	}

	if err := scanner.Err(); err != nil {
		fmt.Println("שגיאה בקריאת הקובץ:", err)
	}
}
