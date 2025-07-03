package Formatter

import "github.com/HadasAmar/analytics-load-tool/Model"

type FormattedRecord interface{}

type Formatter interface {
	Format(Model.ParsedRecord) (FormattedRecord, error)
}
