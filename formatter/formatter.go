package formatter

import "github.com/HadasAmar/analytics-load-tool/Model"

type FormattedRecord interface{}

type Formatter interface {
	Format(*Model.ParsedQuery) (FormattedRecord, error)
}
