package Model

type ParsedQuery struct {
	SelectFields     []string          // שדות SELECT
	TableName        string            // FROM
	GroupByFields    []string          // GROUP BY
	Aggregations     []string          // אגרגציות פשוטות
	PostAggregations []PostAggregation // אגרגציות מורכבות/חישוביות
	Filter           *FilterNode       // תנאי WHERE
	Having           *HavingClause     // תנאי HAVING
	Limit            *int              // הגבלת שורות
	Granularity      string            // גרנולריות (לרוב all/day)
	Intervals        []string          // טווחי זמן
	Ordering         []string          // סדר מיון
	Descending       bool              // האם מיון יורד
	Context          map[string]any    // קונפיגורציית הקשר
	VirtualColumns   []VirtualColumn   // עמודות מחושבות
	QueryType        string            // סוג השאילתה (groupBy, topN, etc)
	RawJSON          string            // השאילתה המקורית (לשחזור/לוגים)
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
