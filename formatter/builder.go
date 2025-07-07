package Formatter

import (
	"fmt"
	"strings"

	"github.com/HadasAmar/analytics-load-tool/Model"
)

func BuildSQLQuery(pq *Model.ParsedQuery) string {
	if pq == nil {
		return ""
	}

	selectSet := make(map[string]struct{})
	var selectClause []string

	for _, field := range pq.SelectFields {
		if _, exists := selectSet[field]; !exists {
			selectSet[field] = struct{}{}
			selectClause = append(selectClause, field)
		}
	}
	for _, agg := range pq.Aggregations {
		if _, exists := selectSet[agg]; !exists {
			selectSet[agg] = struct{}{}
			selectClause = append(selectClause, agg)
		}
	}
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

	if pq.Filter != nil {
		if where := FilterToSQL(pq.Filter); where != "" {
			query += fmt.Sprintf(" WHERE %s", where)
		}
	}

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

	if pq.Having != nil {
		if having := HavingToSQL(pq.Having); having != "" {
			query += fmt.Sprintf(" HAVING %s", having)
		}
	}

	if pq.Limit != nil {
		query += fmt.Sprintf(" LIMIT %d", *pq.Limit)
	}

	if len(pq.Ordering) > 0 {
		query += fmt.Sprintf(" ORDER BY %s", strings.Join(pq.Ordering, ", "))
		if pq.Descending {
			query += " DESC"
		}
	}

	if pq.Granularity != "" {
		query += fmt.Sprintf(" /* granularity: %s */", pq.Granularity)
	}
	if len(pq.Intervals) > 0 {
		query += fmt.Sprintf(" /* intervals: %s */", strings.Join(pq.Intervals, ", "))
	}
	if pq.Context != nil && len(pq.Context) > 0 {
		query += fmt.Sprintf(" /* context: %+v */", pq.Context)
	}

	return query
}
