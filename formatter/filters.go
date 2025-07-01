package Formatter

import (
	"fmt"
	"strings"
	"github.com/HadasAmar/analytics-load-tool/Model"
)

func FilterToSQL(f *Model.FilterNode) string {
	if f == nil {
		return ""
	}
	switch f.Type {
	case "selector":
		return fmt.Sprintf("%s = '%s'", f.Dimension, f.Value)
	case "bound":
		var parts []string
		if f.Lower != "" {
			parts = append(parts, fmt.Sprintf("%s >= '%s'", f.Dimension, f.Lower))
		}
		if f.Upper != "" {
			parts = append(parts, fmt.Sprintf("%s <= '%s'", f.Dimension, f.Upper))
		}
		return strings.Join(parts, " AND ")
	case "and":
		var clauses []string
		for _, child := range f.Fields {
			if s := FilterToSQL(child); s != "" {
				clauses = append(clauses, fmt.Sprintf("(%s)", s))
			}
		}
		return strings.Join(clauses, " AND ")
	case "or":
		var clauses []string
		for _, child := range f.Fields {
			if s := FilterToSQL(child); s != "" {
				clauses = append(clauses, fmt.Sprintf("(%s)", s))
			}
		}
		return strings.Join(clauses, " OR ")
	case "not":
		if f.Field != nil {
			return fmt.Sprintf("NOT (%s)", FilterToSQL(f.Field))
		}
	}
	return fmt.Sprintf("/* unsupported filter type: %s */", f.Type)
}

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
		if len(h.HavingSpecs) == 1 {
			return fmt.Sprintf("NOT (%s)", HavingToSQL(h.HavingSpecs[0]))
		}
	case "or":
		var parts []string
		for _, child := range h.HavingSpecs {
			if s := HavingToSQL(child); s != "" {
				parts = append(parts, fmt.Sprintf("(%s)", s))
			}
		}
		return strings.Join(parts, " OR ")
	case "and":
		var parts []string
		for _, child := range h.HavingSpecs {
			if s := HavingToSQL(child); s != "" {
				parts = append(parts, fmt.Sprintf("(%s)", s))
			}
		}
		return strings.Join(parts, " AND ")
	}
	return fmt.Sprintf("/* unsupported having type: %s */", h.Type)
}
