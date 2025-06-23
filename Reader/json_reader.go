package main
import (
    "encoding/json"
    "fmt"
    "os"
    "time"
)


func processJSONFile(filename string) {
    data, err := os.ReadFile(filename)
    if err != nil {
        fmt.Println("שגיאה בקריאת קובץ:", err)
        return
    }

    var records []struct {
        Timestamp string    `json:"timestamp"`
        IP        string    `json:"ip"`
        Query     QueryData `json:"query"`
    }

    err = json.Unmarshal(data, &records)
    if err != nil {
        fmt.Println("שגיאת JSON:", err)
        return
    }

    for i, rec := range records {
        timestamp, err := time.Parse(time.RFC3339, rec.Timestamp)
        if err != nil {
            fmt.Printf("שגיאת זמן בשורה %d: %v\n", i+1, err)
            continue
        }

        entry := LogEntry{
            CampaignID:          getDim(rec.Query.Dimensions, "campaign_id"),
            Partner:             getDim(rec.Query.Dimensions, "partner"),
            AppID:               getDim(rec.Query.Dimensions, "app_id"),
            UnmaskedMediaSource: getDim(rec.Query.Dimensions, "unmasked_media_source"),
            MediaSource:         getDim(rec.Query.Dimensions, "media_source"),
            AttributionType:     getDim(rec.Query.Dimensions, "attribution_type"),
            Campaign:            getDim(rec.Query.Dimensions, "campaign"),
            Source:              getDim(rec.Query.Dimensions, "source"),
            AdID:                getDim(rec.Query.Dimensions, "ad_id"),
            AdsetID:             getDim(rec.Query.Dimensions, "adset_id"),
            AdsetName:           getDim(rec.Query.Dimensions, "adset_name"),
            SiteID:              getDim(rec.Query.Dimensions, "site_id"),
            Ad:                  getDim(rec.Query.Dimensions, "ad"),
            LtvCountry:          getDim(rec.Query.Dimensions, "ltv_country"),
            Installs:            getAgg(rec.Query.Aggregations, "installs"),
            Impressions:         getAgg(rec.Query.Aggregations, "impressions"),
            Clicks:              getAgg(rec.Query.Aggregations, "clicks"),
            Loyals:              getAgg(rec.Query.Aggregations, "loyals"),
            OrganicInstalls:     getAgg(rec.Query.Aggregations, "organic_installs"),
            OrganicImpressions:  getAgg(rec.Query.Aggregations, "organic_impressions"),
            OrganicClicks:       getAgg(rec.Query.Aggregations, "organic_clicks"),
            OrganicLoyals:       getAgg(rec.Query.Aggregations, "organic_loyals"),
            LogTime:             timestamp,
            IP:                  rec.IP,
        }

        fmt.Printf("✅ %s - IP: %s - AppID: %s\n", entry.LogTime, entry.IP, entry.AppID)
    }
}
