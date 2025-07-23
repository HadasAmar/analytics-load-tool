package formatter

import (
	"fmt"
	"strings"

	"github.com/HadasAmar/analytics-load-tool/Model"
)

// FilterToSQL converts a FilterNode into a SQL WHERE clause string.
func FilterToSQL(f *Model.FilterNode) string {
	if f == nil {
		return ""
	}

	switch f.Type {
	case "selector":
		// Simple equality condition, e.g. dimension = 'value'
		return fmt.Sprintf("%s = '%s'", f.Dimension, f.Value)

	case "bound":
		// Range condition (e.g., dimension BETWEEN lower AND upper)
		var parts []string
		if f.Lower != "" {
			parts = append(parts, fmt.Sprintf("%s >= '%s'", f.Dimension, f.Lower))
		}
		if f.Upper != "" {
			parts = append(parts, fmt.Sprintf("%s <= '%s'", f.Dimension, f.Upper))
		}
		return strings.Join(parts, " AND ")

	case "and":
		// Logical AND for multiple conditions
		var clauses []string
		for _, child := range f.Fields {
			if clause := FilterToSQL(child); clause != "" {
				clauses = append(clauses, fmt.Sprintf("(%s)", clause))
			}
		}
		return strings.Join(clauses, " AND ")

	case "or":
		// Logical OR for multiple conditions
		var clauses []string
		for _, child := range f.Fields {
			if clause := FilterToSQL(child); clause != "" {
				clauses = append(clauses, fmt.Sprintf("(%s)", clause))
			}
		}
		return strings.Join(clauses, " OR ")

	case "not":
		// Logical NOT for a single condition
		if f.Field != nil {
			return fmt.Sprintf("NOT (%s)", FilterToSQL(f.Field))
		}
	}

	// Unsupported filter type
	return fmt.Sprintf("/* unsupported filter type: %s */", f.Type)
}

// HavingToSQL converts a HavingClause into a SQL HAVING clause string.
func HavingToSQL(h *Model.HavingClause) string {
	if h == nil {
		return ""
	}

	switch h.Type {
	case "greaterThan":
		// Aggregation > value
		return fmt.Sprintf("%s > %v", h.Aggregation, h.Value)

	case "lessThan":
		// Aggregation < value
		return fmt.Sprintf("%s < %v", h.Aggregation, h.Value)

	case "equalTo":
		// Aggregation = value
		return fmt.Sprintf("%s = %v", h.Aggregation, h.Value)

	case "not":
		// Logical NOT for a single having condition
		if len(h.HavingSpecs) == 1 {
			return fmt.Sprintf("NOT (%s)", HavingToSQL(h.HavingSpecs[0]))
		}

	case "or":
		// Logical OR for multiple having conditions
		var parts []string
		for _, child := range h.HavingSpecs {
			if part := HavingToSQL(child); part != "" {
				parts = append(parts, fmt.Sprintf("(%s)", part))
			}
		}
		return strings.Join(parts, " OR ")

	case "and":
		// Logical AND for multiple having conditions
		var parts []string
		for _, child := range h.HavingSpecs {
			if part := HavingToSQL(child); part != "" {
				parts = append(parts, fmt.Sprintf("(%s)", part))
			}
		}
		return strings.Join(parts, " AND ")
	}

	// Unsupported having clause type
	return fmt.Sprintf("/* unsupported having type: %s */", h.Type)
}
