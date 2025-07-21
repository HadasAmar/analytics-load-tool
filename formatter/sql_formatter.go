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

	// Use a set to avoid duplicate select fields
	selectSet := make(map[string]struct{})
	var selectClause []string

	// Add fields from the SELECT clause
	for _, field := range pq.SelectFields {
		if _, exists := selectSet[field]; !exists {
			selectSet[field] = struct{}{}
			selectClause = append(selectClause, field)
		}
	}

	// Convert and add aggregation functions
	for _, agg := range pq.Aggregations {
		converted := convertDruidFuncToSQL(agg)
		if _, exists := selectSet[converted]; !exists {
			selectSet[converted] = struct{}{}
			selectClause = append(selectClause, converted)
		}
	}

	// Add post-aggregation expressions (with aliases)
	for _, p := range pq.PostAggregations {
		expr := p.Expression
		if expr == "" {
			expr = p.FieldName
		}
		if expr != "" {
			expr = convertDruidFuncToSQL(expr)
			formatted := fmt.Sprintf("%s AS %s", expr, p.Name)
			if _, exists := selectSet[formatted]; !exists {
				selectSet[formatted] = struct{}{}
				selectClause = append(selectClause, formatted)
			}
		}
	}

	// Construct SELECT and FROM clauses
	query := fmt.Sprintf("SELECT %s", strings.Join(selectClause, ", "))
	query += fmt.Sprintf(" FROM %s", pq.TableName)

	// Add WHERE clause based on filters
	if pq.Filter != nil {
		if where := FilterToSQL(pq.Filter); where != "" {
			query += fmt.Sprintf(" WHERE %s", where)
		}
	}

	// Construct GROUP BY clause
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

	// Add HAVING clause if specified
	if pq.Having != nil {
		if having := HavingToSQL(pq.Having); having != "" {
			query += fmt.Sprintf(" HAVING %s", convertDruidFuncToSQL(having))
		}
	}

	// Add LIMIT clause if specified
	if pq.Limit != nil {
		query += fmt.Sprintf(" LIMIT %d", *pq.Limit)
	}

	// Add ORDER BY clause (and DESC order if specified)
	if len(pq.Ordering) > 0 {
		query += fmt.Sprintf(" ORDER BY %s", strings.Join(pq.Ordering, ", "))
		if pq.Descending {
			query += " DESC"
		}
	}

	// Add granularity information as comment
	if pq.Granularity != "" {
		query += fmt.Sprintf(" /* granularity: %s */", pq.Granularity)
	}

	// Add intervals as comment
	if len(pq.Intervals) > 0 {
		query += fmt.Sprintf(" /* intervals: %s */", strings.Join(pq.Intervals, ", "))
	}

	// Add context information as comment
	if pq.Context != nil && len(pq.Context) > 0 {
		query += fmt.Sprintf(" /* context: %+v */", pq.Context)
	}

	return query
}

// convertDruidFuncToSQL replaces Druid aggregation functions with BigQuery equivalents.
func convertDruidFuncToSQL(expr string) string {
	replacements := map[string]string{
		"longSum":     "SUM",
		"doubleSum":   "SUM",
		"longMin":     "MIN",
		"doubleMin":   "MIN",
		"longMax":     "MAX",
		"doubleMax":   "MAX",
		"hyperUnique": "APPROX_COUNT_DISTINCT",
		"count":       "COUNT",
	}

	for druidFunc, sqlFunc := range replacements {
		expr = strings.ReplaceAll(expr, druidFunc+"(", sqlFunc+"(")
	}
	return expr
}
