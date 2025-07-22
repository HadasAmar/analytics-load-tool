package formatter

import "github.com/HadasAmar/analytics-load-tool/Model"

// FormattedRecord represents a formatted query result.
type FormattedRecord interface{}

// Formatter is an interface for formatting parsed queries.
type Formatter interface {
	// Format converts ParsedQuery to a formatted record.
	Format(*Model.ParsedQuery) (FormattedRecord, error)
}
