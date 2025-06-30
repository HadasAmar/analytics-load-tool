package Model
type ParsedQuery struct {
	SelectFields   []string
	TableName      string
	GroupByFields  []string
	Aggregations   []string
	Filter         *FilterNode // 🟢 Struct מורכב שמכיל את הפילטר
}
