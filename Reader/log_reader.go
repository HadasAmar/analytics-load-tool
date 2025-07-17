package Reader

import (
	"bufio"
	"os"
	"strings"

	"github.com/HadasAmar/analytics-load-tool/Model"
)

// ReadLogFile reads a .log file and returns a list of ParsedRecord
func ReadLogFile(filename string) ([]*Model.ParsedRecord, error) {
	file, err := os.Open(filename)
	if err != nil {
		return nil, err
	}
	defer file.Close()

	var result []*Model.ParsedRecord
	scanner := bufio.NewScanner(file)

	for scanner.Scan() {
		line := scanner.Text()
		parts := strings.SplitN(line, "\t", 4)
		if len(parts) < 3 {
			continue
		}

		record := &Model.ParsedRecord{
	LogTime: parseTime(parts[0]),
	IP:      parts[1],
	Query:   parts[2],
	Parsed:  nil,
}

		if record != nil && record.Parsed != nil {
			result = append(result, record)
		}
	}

	return result, scanner.Err()
}

// LogReader implements the FileReader interface for .log files
type LogReader struct{}

func (l LogReader) Read(filename string) ([]*Model.ParsedRecord, error) {
	return ReadLogFile(filename)
}
