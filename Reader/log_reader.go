package Reader

import (
    "bufio"
    "encoding/json"
    "fmt"
    "os"
    "strings"
    "time"
)

type DimensionSpec struct {
    Dimension  string `json:"dimension"`
    OutputName string `json:"outputName"`
    OutputType string `json:"outputType"`
}

type AggregationSpec struct {
    Type      string `json:"type"`
    Name      string `json:"name"`
    FieldName string `json:"fieldName"`
}

type QueryData struct {
    QueryType    string             `json:"queryType"`
    Dimensions   []DimensionSpec    `json:"dimensions"`
    Aggregations []AggregationSpec  `json:"aggregations"`
}

type LogEntry struct {
    CampaignID           string
    Partner              string
    AppID                string
    UnmaskedMediaSource  string
    MediaSource          string
    AttributionType      string
    Campaign             string
    Source               string
    AdID                 string
    AdsetID              string
    AdsetName            string
    SiteID               string
    Ad                   string
    LtvCountry           string
    Installs             int
    Impressions          int
    Clicks               int
    Loyals               int
    OrganicInstalls      int
    OrganicImpressions   int
    OrganicClicks        int
    OrganicLoyals        int
    LogTime              time.Time
    IP                   string
}
func getDim(dims []DimensionSpec, name string) string {
    for _, d := range dims {
        if d.Dimension == name {
            return d.OutputName // נניח שזה בעצם צריך להיות הערך, אבל אין לנו אותו באמת פה
        }
    }
    return ""
}


func getAgg(aggs []AggregationSpec, name string) int {
    for _, a := range aggs {
        if a.Name == name {
            return 1 // סימון שהוא קיים
        }
    }
    return 0
}

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

        var query QueryData
        err := json.Unmarshal([]byte(jsonStr), &query)
        if err != nil {
            fmt.Printf("שגיאת JSON בשורה %d: %v\n", lineNumber, err)
            continue
        }

        timestamp, _ := time.Parse(time.RFC3339, timestampStr)

        entry := LogEntry{
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

        fmt.Printf("✅ %s - IP: %s - AppID: %s\n", entry.LogTime, entry.IP, entry.AppID)
    }

    if err := scanner.Err(); err != nil {
        fmt.Println("שגיאה בקריאת הקובץ:", err)
    }
}