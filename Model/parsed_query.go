package Model

type ParsedQuery struct {
	SelectFields   []string
	TableName      string
	GroupByFields  []string
	Aggregations   []string
	FilterSummary  string
}
