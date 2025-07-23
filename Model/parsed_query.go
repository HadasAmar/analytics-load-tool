package Model

type ParsedQuery struct {
	SelectFields     []string          // SELECT fields
	TableName        string            // FROM
	GroupByFields    []string          // GROUP BY
    Aggregations []Aggregation
	PostAggregations []PostAggregation // Complex/computed aggregations
	Filter           *FilterNode       // WHERE clause
	Having           *HavingClause     // HAVING clause
	Limit            *int              // Row limit
	Granularity      string            // Granularity (usually "all" or "day")
	Intervals        []string          // Time intervals
	Ordering         []string          // Sorting order
	Descending       bool              // Whether sorting is descending
	Context          map[string]any    // Contextual configuration
	VirtualColumns   []VirtualColumn   // Computed columns
	QueryType        string            // Query type (e.g., groupBy, topN)
	RawJSON          string            // Original query (for logging/debugging)
}
type Aggregation struct {
	Type      string
	FieldName string
	Alias     string
}

type HavingClause struct {
	Type        string          `json:"type"`
	HavingSpecs []*HavingClause `json:"havingSpecs,omitempty"`
	Aggregation string          `json:"aggregation,omitempty"`
	Value       float64         `json:"value,omitempty"`
}

type PostAggregation struct {
	Name       string `json:"name"`
	Expression string `json:"expression,omitempty"`
	FieldName  string `json:"fieldName,omitempty"`
}

type VirtualColumn struct {
	Name       string `json:"name"`
	Expression string `json:"expression"`
	OutputType string `json:"outputType"`
}
