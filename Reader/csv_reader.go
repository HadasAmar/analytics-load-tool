package main

import (
	"encoding/csv"
	"fmt"
	"os"
)

func processCSVFile(filename string) error {
	file, err := os.Open(filename)
	if err != nil {
		return err
	}
	defer file.Close()

	reader := csv.NewReader(file)
	records, err := reader.ReadAll()
	if err != nil {
		return err
	}

	if len(records) < 1 {
		return fmt.Errorf("קובץ ריק")
	}

	headers := records[0]

	for i, record := range records[1:] {
		if len(record) != len(headers) {
			fmt.Printf("שורה %d באורך שונה מהכותרת\n", i+2)
			continue
		}

		row := make(map[string]string)
		for j, value := range record {
			row[headers[j]] = value
		}

		fmt.Printf("שורה %d: %+v\n", i+2, row)
	}

	return nil
}
