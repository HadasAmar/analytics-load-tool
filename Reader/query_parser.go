package Reader

import (
	"encoding/json"
	"fmt"

	"github.com/HadasAmar/analytics-load-tool/Model"
)

func ParseRawQuery(raw string) (*Model.ParsedQuery, error) {
	var query struct {
		QueryType   string `json:"queryType"`
		DataSource  struct {
			Type string `json:"type"`
			Name string `json:"name"`
		} `json:"dataSource"`
		Dimensions []struct {
			Dimension string `json:"dimension"`
		} `json:"dimensions"`
		Aggregations []struct {
			Type      string `json:"type"`
			Name      string `json:"name"`
			FieldName string `json:"fieldName"`
		} `json:"aggregations"`
		Filter interface{} `json:"filter"`
	}

	if err := json.Unmarshal([]byte(raw), &query); err != nil {
		return nil, err
	}

	var selectFields []string
	for _, d := range query.Dimensions {
		selectFields = append(selectFields, d.Dimension)
	}

	var aggs []string
	for _, a := range query.Aggregations {
		aggs = append(aggs, fmt.Sprintf("%s(%s) AS %s", a.Type, a.FieldName, a.Name))
	}

	filterSummary, _ := json.Marshal(query.Filter)

	return &Model.ParsedQuery{
		SelectFields:   selectFields,
		TableName:      query.DataSource.Name,
		GroupByFields:  selectFields,
		Aggregations:   aggs,
		FilterSummary:  string(filterSummary),
	}, nil
}
