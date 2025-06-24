package Parser

import (
	"encoding/json"
	"fmt"
	"strconv"
	"time"

	"github.com/HadasAmar/analytics-load-tool.git/Model"
	"github.com/HadasAmar/analytics-load-tool.git/Reader"
)

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

func ParseCSVRaw(r Reader.RawRecord) *Model.LogEntry {
	var row map[string]string
	if err := json.Unmarshal([]byte(r.RawQuery), &row); err != nil {
		return nil
	}
	entry := Model.LogEntry{
		CampaignID:          row["campaign_id"],
		Partner:             row["partner"],
		AppID:               row["app_id"],
		UnmaskedMediaSource: row["unmasked_media_source"],
		MediaSource:         row["media_source"],
		AttributionType:     row["attribution_type"],
		Campaign:            row["campaign"],
		Source:              row["source"],
		AdID:                row["ad_id"],
		AdsetID:             row["adset_id"],
		AdsetName:           row["adset_name"],
		SiteID:              row["site_id"],
		Ad:                  row["ad"],
		LtvCountry:          row["ltv_country"],
		Installs:            parseInt(row["installs"]),
		Impressions:         parseInt(row["impressions"]),
		Clicks:              parseInt(row["clicks"]),
		Loyals:              parseInt(row["loyals"]),
		OrganicInstalls:     parseInt(row["organic_installs"]),
		OrganicImpressions:  parseInt(row["organic_impressions"]),
		OrganicClicks:       parseInt(row["organic_clicks"]),
		OrganicLoyals:       parseInt(row["organic_loyals"]),
		LogTime:             parseTime(row["log_time"]),
		IP:                  row["ip"],
	}
	return &entry
}

func parseInt(s string) int {
	i, err := strconv.Atoi(s)
	if err != nil {
		return 0
	}
	return i
}

func parseTime(s string) time.Time {
	t, err := time.Parse(time.RFC3339, s)
	if err != nil {
		return time.Time{}
	}
	return t
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
