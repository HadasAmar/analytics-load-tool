package formatter

import (
	"fmt"
	"strings"
	"github.com/HadasAmar/analytics-load-tool/Model"
)

// FilterToSQL converts a FilterNode (from the parsed model) into a SQL WHERE condition string.
func FilterToSQL(f *Model.FilterNode) string {
	if f == nil {
		return ""
	}

	switch f.Type {
	case "selector":
		// A simple equality condition: dimension = 'value'
		return fmt.Sprintf("%s = '%s'", f.Dimension, f.Value)

	case "bound":
		// A range condition (e.g. >= lower and/or <= upper)
		var parts []string
		if f.Lower != "" {
			parts = append(parts, fmt.Sprintf("%s >= '%s'", f.Dimension, f.Lower))
		}
		if f.Upper != "" {
			parts = append(parts, fmt.Sprintf("%s <= '%s'", f.Dimension, f.Upper))
		}
		return strings.Join(parts, " AND ")

	case "and":
		// Combine multiple child filters using AND
		var clauses []string
		for _, child := range f.Fields {
			if s := FilterToSQL(child); s != "" {
				clauses = append(clauses, fmt.Sprintf("(%s)", s))
			}
		}
		return strings.Join(clauses, " AND ")

	case "or":
		// Combine multiple child filters using OR
		var clauses []string
		for _, child := range f.Fields {
			if s := FilterToSQL(child); s != "" {
				clauses = append(clauses, fmt.Sprintf("(%s)", s))
			}
		}
		return strings.Join(clauses, " OR ")

	case "not":
		// Apply NOT to a single child filter
		if f.Field != nil {
			return fmt.Sprintf("NOT (%s)", FilterToSQL(f.Field))
		}
	}

	// Return a comment if the filter type is unsupported
	return fmt.Sprintf("/* unsupported filter type: %s */", f.Type)
}

// HavingToSQL converts a HavingClause (usually applied after aggregations) into a SQL HAVING clause string.
func HavingToSQL(h *Model.HavingClause) string {
	if h == nil {
		return ""
	}

	switch h.Type {
	case "greaterThan":
		return fmt.Sprintf("%s > %v", h.Aggregation, h.Value)

	case "lessThan":
		return fmt.Sprintf("%s < %v", h.Aggregation, h.Value)

	case "equalTo":
		return fmt.Sprintf("%s = %v", h.Aggregation, h.Value)

	case "not":
		// Apply NOT to one inner having clause
		if len(h.HavingSpecs) == 1 {
			return fmt.Sprintf("NOT (%s)", HavingToSQL(h.HavingSpecs[0]))
		}

	case "or":
		// Combine child havings with OR
		var parts []string
		for _, child := range h.HavingSpecs {
			if s := HavingToSQL(child); s != "" {
				parts = append(parts, fmt.Sprintf("(%s)", s))
			}
		}
		return strings.Join(parts, " OR ")

	case "and":
		// Combine child havings with AND
		var parts []string
		for _, child := range h.HavingSpecs {
			if s := HavingToSQL(child); s != "" {
				parts = append(parts, fmt.Sprintf("(%s)", s))
			}
		}
		return strings.Join(parts, " AND ")
	}

	// Return a comment if the having type is unsupported
	return fmt.Sprintf("/* unsupported having type: %s */", h.Type)
}
