package formatter

import (
	"fmt"
	"strings"

	"github.com/HadasAmar/analytics-load-tool/Model"
)

// SQLFormatter formats ParsedQuery structs into BigQuery-compatible SQL queries.
type SQLFormatter struct{}

// Format converts a ParsedQuery into a formatted SQL query.
func (f *SQLFormatter) Format(rec *Model.ParsedQuery) (FormattedRecord, error) {
	return BuildSQLQuery(rec), nil
}

// BuildSQLQuery constructs a SQL query string compatible with BigQuery.
func BuildSQLQuery(pq *Model.ParsedQuery) string {
	if pq == nil {
		return ""
	}

	selectSet := make(map[string]struct{})
	var selectClause []string

	// SELECT fields
	for _, field := range pq.SelectFields {
		if _, exists := selectSet[field]; !exists {
			selectSet[field] = struct{}{}
			selectClause = append(selectClause, field)
		}
	}

	// Aggregations (new structure)
	for _, agg := range pq.Aggregations {
		formatted := formatAggregation(agg)
		if _, exists := selectSet[formatted]; !exists {
			selectSet[formatted] = struct{}{}
			selectClause = append(selectClause, formatted)
		}
	}

	// PostAggregations
	for _, p := range pq.PostAggregations {
		expr := p.Expression
		if expr == "" {
			expr = p.FieldName
		}
		if expr != "" {
			formatted := fmt.Sprintf("%s AS %s", expr, p.Name)
			if _, exists := selectSet[formatted]; !exists {
				selectSet[formatted] = struct{}{}
				selectClause = append(selectClause, formatted)
			}
		}
	}

	query := fmt.Sprintf("SELECT %s", strings.Join(selectClause, ", "))
	query += fmt.Sprintf(" FROM %s", pq.TableName)

	// WHERE
	if pq.Filter != nil {
		if where := FilterToSQL(pq.Filter); where != "" {
			query += fmt.Sprintf(" WHERE %s", where)
		}
	}

	// GROUP BY
	groupSet := make(map[string]struct{})
	var groupBy []string
	for _, f := range pq.GroupByFields {
		if _, exists := groupSet[f]; !exists {
			groupSet[f] = struct{}{}
			groupBy = append(groupBy, f)
		}
	}
	if len(groupBy) > 0 {
		query += fmt.Sprintf(" GROUP BY %s", strings.Join(groupBy, ", "))
	}

	// HAVING
	if pq.Having != nil {
		if having := HavingToSQL(pq.Having); having != "" {
			query += fmt.Sprintf(" HAVING %s", having)
		}
	}

	// LIMIT
	if pq.Limit != nil {
		query += fmt.Sprintf(" LIMIT %d", *pq.Limit)
	}

	// ORDER BY
	if len(pq.Ordering) > 0 {
		query += fmt.Sprintf(" ORDER BY %s", strings.Join(pq.Ordering, ", "))
		if pq.Descending {
			query += " DESC"
		}
	}

	// Metadata comments
	if pq.Granularity != "" {
		query += fmt.Sprintf(" /* granularity: %s */", pq.Granularity)
	}
	if len(pq.Intervals) > 0 {
		query += fmt.Sprintf(" /* intervals: %s */", strings.Join(pq.Intervals, ", "))
	}
	if len(pq.Context) > 0 {
		query += fmt.Sprintf(" /* context: %+v */", pq.Context)
	}

	return query
}

// formatAggregation builds an SQL expression from Aggregation struct.
func formatAggregation(agg Model.Aggregation) string {
	expr := strings.ToUpper(agg.Type) + "(" + agg.FieldName + ")"
	if agg.Alias != "" {
		expr += " AS " + agg.Alias
	}
	return expr
}
