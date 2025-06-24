package Reader

import (
	"path/filepath"
	"fmt"
)

type RawRecord struct {
	Timestamp string
	IP        string
	RawQuery  string
}

func ReadFile(filename string) ([]RawRecord, error) {
	ext := filepath.Ext(filename)
	switch ext {
	case ".json":
		return ReadJSONFile(filename)
	case ".csv":
		return ReadCSVFile(filename)
	case ".log":
		return ReadLogFile(filename)
	default:
		return nil, fmt.Errorf("unsupported file type: %s", ext)
	}
}
