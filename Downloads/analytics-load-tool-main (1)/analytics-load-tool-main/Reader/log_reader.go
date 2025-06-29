package Reader

import (
	"bufio"
	"os"
	"strings"
)

func ReadLogFile(filename string) ([]RawRecord, error) {
	file, err := os.Open(filename)
	if err != nil {
		return nil, err
	}
	defer file.Close()

	var result []RawRecord
	scanner := bufio.NewScanner(file)

	for scanner.Scan() {
		line := scanner.Text()
		parts := strings.SplitN(line, "\t", 4)
		if len(parts) < 3 {
			continue
		}
		result = append(result, RawRecord{
			Timestamp: parts[0],
			IP:        parts[1],
			RawQuery:  parts[2],
		})
	}

	return result, scanner.Err()
}
type LogReader struct{}

func (l LogReader) Read(filename string) ([]RawRecord, error) {
	return ReadLogFile(filename)
}
