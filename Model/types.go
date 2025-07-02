package Model

import "time"

type ParsedRecord struct {
	LogTime time.Time
	IP      string
	Query   string
	Parsed  *ParsedQuery
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
