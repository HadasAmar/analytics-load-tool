package Reader

import (
	"fmt"
	"path/filepath"
	"github.com/HadasAmar/analytics-load-tool/Model"

)

type RawRecord struct {
	Timestamp   string
	IP          string
	RawQuery    string
	ParsedQuery *Model.ParsedQuery
}

func GetReader(filename string) (FileReader, error) {
	ext := filepath.Ext(filename)
	switch ext {
	case ".csv":
		return CSVReader{}, nil
	case ".json":
		return JSONReader{}, nil
	case ".log":
		return LogReader{}, nil
	default:
		return nil, fmt.Errorf("unsupported file extension: %s", ext)
	}
}
