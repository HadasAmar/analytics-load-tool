package Reader

import (
	"fmt"
	"path/filepath"
)
// Reader selection based on input_language from Consul
func GetReaderFromConsul(filename string, client *configuration.ConsulClient) (FileReader, error) {
	lang, err := configuration.GetInputLanguage(client)
	if err != nil {
		return nil, fmt.Errorf("failed to read input_language from Consul: %w", err)
	}

	switch strings.ToLower(lang) {
	case "csv":
		return CSVReader{}, nil
	case "json":
		return JSONReader{}, nil
	case "log":
		return LogReader{}, nil
	default:
		return nil, fmt.Errorf("unsupported input_language: %s", lang)
	}
}

// Unified function: reads and returns ParsedRecords using Consul config
func ReadRecordsFromConsul(filename string, client *configuration.ConsulClient) ([]*Model.ParsedRecord, error) {
	reader, err := GetReaderFromConsul(filename, client)
	if err != nil {
		return nil, fmt.Errorf("failed to get reader from Consul: %w", err)
	}
	return reader.Read(filename)
}