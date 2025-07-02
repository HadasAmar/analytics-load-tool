package Reader

import "github.com/HadasAmar/analytics-load-tool/Model"

type FileReader interface {
	Read(filename string) ([]*Model.ParsedRecord, error)
}
