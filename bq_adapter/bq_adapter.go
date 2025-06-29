package bq_adapter

import (
	"errors"
	"fmt"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Model"
)

type BQLogRecord struct {
	LogTime              time.Time `json:"log_time"`
	IP                   string    `json:"ip"`
	CampaignID           string    `json:"campaign_id"`
	Partner              string    `json:"partner"`
	AppID                string    `json:"app_id"`
	UnmaskedMediaSource  string    `json:"unmasked_media_source"`
	MediaSource          string    `json:"media_source"`
	AttributionType      string    `json:"attribution_type"`
	Campaign             string    `json:"campaign"`
	Source               string    `json:"source"`
	AdID                 string    `json:"ad_id"`
	AdsetID              string    `json:"adset_id"`
	AdsetName            string    `json:"adset_name"`
	SiteID               string    `json:"site_id"`
	Ad                   string    `json:"ad"`
	LtvCountry           string    `json:"ltv_country"`
	Installs             int       `json:"installs"`
	Impressions          int       `json:"impressions"`
	Clicks               int       `json:"clicks"`
	Loyals               int       `json:"loyals"`
	OrganicInstalls      int       `json:"organic_installs"`
	OrganicImpressions   int       `json:"organic_impressions"`
	OrganicClicks        int       `json:"organic_clicks"`
	OrganicLoyals        int       `json:"organic_loyals"`
}

func ConvertLogEntryToBQ(entry Model.LogEntry) (BQLogRecord, error) {
	if entry.LogTime.IsZero() {
		return BQLogRecord{}, errors.New("log_time is missing or invalid")
	}
	if entry.IP == "" {
		return BQLogRecord{}, errors.New("ip is missing")
	}

	return BQLogRecord{
		LogTime:             entry.LogTime,
		IP:                  entry.IP,
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
	}, nil
}

func ConvertLogEntriesToBQ(entries []Model.LogEntry) ([]BQLogRecord, []error) {
	var records []BQLogRecord
	var errs []error

	for i, entry := range entries {
		bq, err := ConvertLogEntryToBQ(entry)
		if err != nil {
			errs = append(errs, fmt.Errorf("entry %d: %v", i, err))
			continue
		}
		records = append(records, bq)
	}

	return records, errs
}
