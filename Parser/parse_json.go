package Parser

import (
	"encoding/json"
	"fmt"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Model"
	"github.com/HadasAmar/analytics-load-tool/Reader"
)

type LogEntry = Model.LogEntry

func ParseRecord(r Reader.RawRecord) *LogEntry {
	var query Model.QueryData
	fmt.Println("📥 Raw JSON:", r.RawQuery)
	err := json.Unmarshal([]byte(r.RawQuery), &query)
	if err != nil {
		fmt.Println("Error parsing query:", err)
		return nil
	}
	t, err := time.Parse(time.RFC3339, r.Timestamp)
	if err != nil {
		fmt.Println("Error parsing timestamp:", err)
		return nil
	}
	fmt.Println("Parsed query:", query)
	entry := FromQueryRecord(t, r.IP, query)
	return &entry
}

func FromQueryRecord(timestamp time.Time, ip string, query Model.QueryData) Model.LogEntry {
	fmt.Println("Parsing query record:", query)
	return Model.LogEntry{
		CampaignID:          GetDim(query.Dimensions, "campaign_id"),
		Partner:             GetDim(query.Dimensions, "partner"),
		AppID:               GetDim(query.Dimensions, "app_id"),
		UnmaskedMediaSource: GetDim(query.Dimensions, "unmasked_media_source"),
		MediaSource:         GetDim(query.Dimensions, "media_source"),
		AttributionType:     GetDim(query.Dimensions, "attribution_type"),
		Campaign:            GetDim(query.Dimensions, "campaign"),
		Source:              GetDim(query.Dimensions, "source"),
		AdID:                GetDim(query.Dimensions, "ad_id"),
		AdsetID:             GetDim(query.Dimensions, "adset_id"),
		AdsetName:           GetDim(query.Dimensions, "adset_name"),
		SiteID:              GetDim(query.Dimensions, "site_id"),
		Ad:                  GetDim(query.Dimensions, "ad"),
		LtvCountry:          GetDim(query.Dimensions, "ltv_country"),
		Installs:            GetAgg(query.Aggregations, "installs"),
		Impressions:         GetAgg(query.Aggregations, "impressions"),
		Clicks:              GetAgg(query.Aggregations, "clicks"),
		Loyals:              GetAgg(query.Aggregations, "loyals"),
		OrganicInstalls:     GetAgg(query.Aggregations, "organic_installs"),
		OrganicImpressions:  GetAgg(query.Aggregations, "organic_impressions"),
		OrganicClicks:       GetAgg(query.Aggregations, "organic_clicks"),
		OrganicLoyals:       GetAgg(query.Aggregations, "organic_loyals"),
		LogTime:             timestamp,
		IP:                  ip,
	}
}


func GetDim(dims []Model.DimensionSpec, name string) string {
	for _, d := range dims {
		if d.Dimension == name {
			return d.OutputName
		}
	}
	return ""
}

func GetAgg(aggs []Model.AggregationSpec, name string) int {
	for _, a := range aggs {
		if a.Name == name {
			return 1
		}
	}
	return 0
}

