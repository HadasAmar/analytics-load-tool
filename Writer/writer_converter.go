package Writer

import (
	"github.com/HadasAmar/analytics-load-tool/Model"
)

func FromLogEntry(entry Model.LogEntry) *LogRecord {
	return &LogRecord{
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
		Installs:            int64(entry.Installs),
		Impressions:         int64(entry.Impressions),
		Clicks:              int64(entry.Clicks),
		Loyals:              int64(entry.Loyals),
		OrganicInstalls:     int64(entry.OrganicInstalls),
		OrganicImpressions:  int64(entry.OrganicImpressions),
		OrganicClicks:       int64(entry.OrganicClicks),
		OrganicLoyals:       int64(entry.OrganicLoyals),
		LogTime:             entry.LogTime,
	}
}
