package Formatter

import ( 
	"encoding/json"
	"errors"
	"fmt"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Model"
)

type BQLogRecord struct {
	LogTime             time.Time `json:"log_time"`
	IP                  string    `json:"ip"`
	CampaignID          string    `json:"campaign_id"`
	Partner             string    `json:"partner"`
	AppID               string    `json:"app_id"`
	UnmaskedMediaSource string    `json:"unmasked_media_source"`
	MediaSource         string    `json:"media_source"`
	AttributionType     string    `json:"attribution_type"`
	Campaign            string    `json:"campaign"`
	Source              string    `json:"source"`
	AdID                string    `json:"ad_id"`
	AdsetID             string    `json:"adset_id"`
	AdsetName           string    `json:"adset_name"`
	SiteID              string    `json:"site_id"`
	Ad                  string    `json:"ad"`
	LtvCountry          string    `json:"ltv_country"`
	Installs            int       `json:"installs"`
	Impressions         int       `json:"impressions"`
	Clicks              int       `json:"clicks"`
	Loyals              int       `json:"loyals"`
	OrganicInstalls     int       `json:"organic_installs"`
	OrganicImpressions  int       `json:"organic_impressions"`
	OrganicClicks       int       `json:"organic_clicks"`
	OrganicLoyals       int       `json:"organic_loyals"`
}

type BQFormatter struct{}

func (f BQFormatter) Format(p Model.ParsedRecord) (FormattedRecord, error) {
	if p.LogTime.IsZero() {
		return nil, errors.New("missing or invalid timestamp")
	}
	if p.IP == "" {
		return nil, errors.New("missing IP address")
	}
	if p.Query == "" {
		return nil, errors.New("missing query data")
	}

	var q Model.QueryData
	err := json.Unmarshal([]byte(p.Query), &q)
	if err != nil {
		return nil, fmt.Errorf("invalid JSON query: %v", err)
	}

	return BQLogRecord{
		LogTime:             p.LogTime,
		IP:                  p.IP,
		CampaignID:          getDim(q.Dimensions, "campaign_id"),
		Partner:             getDim(q.Dimensions, "partner"),
		AppID:               getDim(q.Dimensions, "app_id"),
		UnmaskedMediaSource: getDim(q.Dimensions, "unmasked_media_source"),
		MediaSource:         getDim(q.Dimensions, "media_source"),
		AttributionType:     getDim(q.Dimensions, "attribution_type"),
		Campaign:            getDim(q.Dimensions, "campaign"),
		Source:              getDim(q.Dimensions, "source"),
		AdID:                getDim(q.Dimensions, "ad_id"),
		AdsetID:             getDim(q.Dimensions, "adset_id"),
		AdsetName:           getDim(q.Dimensions, "adset_name"),
		SiteID:              getDim(q.Dimensions, "site_id"),
		Ad:                  getDim(q.Dimensions, "ad"),
		LtvCountry:          getDim(q.Dimensions, "ltv_country"),
		Installs:            getAgg(q.Aggregations, "installs"),
		Impressions:         getAgg(q.Aggregations, "impressions"),
		Clicks:              getAgg(q.Aggregations, "clicks"),
		Loyals:              getAgg(q.Aggregations, "loyals"),
		OrganicInstalls:     getAgg(q.Aggregations, "organic_installs"),
		OrganicImpressions:  getAgg(q.Aggregations, "organic_impressions"),
		OrganicClicks:       getAgg(q.Aggregations, "organic_clicks"),
		OrganicLoyals:       getAgg(q.Aggregations, "organic_loyals"),
	}, nil
}

func getDim(dims []Model.DimensionSpec, name string) string {
	for _, d := range dims {
		if d.Dimension == name {
			return d.OutputName
		}
	}
	return ""
}

func getAgg(aggs []Model.AggregationSpec, name string) int {
	for _, a := range aggs {
		if a.Name == name {
			return 1
		}
	}
	return 0
}
