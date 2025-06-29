package Model

import "time"

type ParsedRecord struct {
	LogTime time.Time
	IP      string
	Query   string
}

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
	QueryType    string            `json:"queryType"`
	Dimensions   []DimensionSpec   `json:"dimensions"`
	Aggregations []AggregationSpec `json:"aggregations"`
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
