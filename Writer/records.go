package writer

import "time"

type LogRecord struct {
	CampaignID          string    `bigquery:"campaign_id"`
	Partner             string    `bigquery:"partner"`
	AppID               string    `bigquery:"app_id"`
	UnmaskedMediaSource string    `bigquery:"unmasked_media_source"`
	MediaSource         string    `bigquery:"media_source"`
	AttributionType     string    `bigquery:"attribution_type"`
	Campaign            string    `bigquery:"campaign"`
	Source              string    `bigquery:"source"`
	AdID                string    `bigquery:"ad_id"`
	AdsetID             string    `bigquery:"adset_id"`
	AdsetName           string    `bigquery:"adset_name"`
	SiteID              string    `bigquery:"site_id"`
	Ad                  string    `bigquery:"ad"`
	LtvCountry          string    `bigquery:"ltv_country"`
	Installs            int64     `bigquery:"installs"`
	Impressions         int64     `bigquery:"impressions"`
	Clicks              int64     `bigquery:"clicks"`
	Loyals              int64     `bigquery:"loyals"`
	OrganicInstalls     int64     `bigquery:"organic_installs"`
	OrganicImpressions  int64     `bigquery:"organic_impressions"`
	OrganicClicks       int64     `bigquery:"organic_clicks"`
	OrganicLoyals       int64     `bigquery:"organic_loyals"`
	LogTime             time.Time `bigquery:"log_time"`
}
