package Parser

import (
	"encoding/json"
	"strconv"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Model"
	"github.com/HadasAmar/analytics-load-tool/Reader"
)

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
		Installs:            ParseInt(row["installs"]),
		Impressions:         ParseInt(row["impressions"]),
		Clicks:              ParseInt(row["clicks"]),
		Loyals:              ParseInt(row["loyals"]),
		OrganicInstalls:     ParseInt(row["organic_installs"]),
		OrganicImpressions:  ParseInt(row["organic_impressions"]),
		OrganicClicks:       ParseInt(row["organic_clicks"]),
		OrganicLoyals:       ParseInt(row["organic_loyals"]),
		LogTime:             ParseTime(row["log_time"]),
		IP:                  row["ip"],
	}
	return &entry
}

func ParseInt(s string) int {
	i, err := strconv.Atoi(s)
	if err != nil {
		return 0
	}
	return i
}

func ParseTime(s string) time.Time {
	t, err := time.Parse(time.RFC3339, s)
	if err != nil {
		return time.Time{}
	}
	return t
}
