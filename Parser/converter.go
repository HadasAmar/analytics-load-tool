package Parser

import (
	"time"
	"strconv"
	"github.com/HadasAmar/analytics-load-tool.git/Model"
)


func FromLogEntry(entry Model.LogEntry) Model.StandardLogRecord {
	return Model.StandardLogRecord{
		CampaignID:          entry.CampaignID,
		Partner:             entry.Partner,
		AppID:               entry.AppID,
		UnmaskedMediaSource: entry.UnmaskedMediaSource,
		MediaSource:         entry.MediaSource,
		AttributionType:     entry.AttributionType,
		Campaign:            entry.Campaign,
		Source:              entry.Source,
		AdID:                entry.AdID,
		AdsetID:             entry.AdsetID,
		AdsetName:           entry.AdsetName,
		SiteID:              entry.SiteID,
		Ad:                  entry.Ad,
		LtvCountry:          entry.LtvCountry,
		Installs:            entry.Installs,
		Impressions:         entry.Impressions,
		Clicks:              entry.Clicks,
		Loyals:              entry.Loyals,
		OrganicInstalls:     entry.OrganicInstalls,
		OrganicImpressions:  entry.OrganicImpressions,
		OrganicClicks:       entry.OrganicClicks,
		OrganicLoyals:       entry.OrganicLoyals,
		LogTime:             entry.LogTime,
	}
}


func FromCSVRow(row map[string]string) Model.StandardLogRecord {
	return Model.StandardLogRecord{
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
	}
}

func parseInt(value string) int {
	i, err := strconv.Atoi(value)
	if err != nil {
		return 0
	}
	return i
}

func parseTime(value string) time.Time {
	t, err := time.Parse(time.RFC3339, value)
	if err != nil {
		return time.Time{}
	}
	return t
}
