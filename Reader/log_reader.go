package Reader

import (
	"bufio"
	"encoding/json"
	"fmt"
	"os"
	"strings"
	"time"

	"github.com/HadasAmar/analytics-load-tool.git/Model"
	"github.com/HadasAmar/analytics-load-tool.git/Parser"
)

func ProcessLogFile(filename string) {
	file, err := os.Open(filename)
	if err != nil {
		fmt.Println("שגיאה בפתיחת קובץ:", err)
		return
	}
	defer file.Close()

	// פתיחת קובץ פלט JSONL (לדרוס אם קיים)
	outputFile, err := os.OpenFile("output.jsonl", os.O_CREATE|os.O_WRONLY|os.O_TRUNC, 0644)
	if err != nil {
		fmt.Println("שגיאה בפתיחת קובץ הפלט:", err)
		return
	}
	defer outputFile.Close()

	scanner := bufio.NewScanner(file)
	lineNumber := 0

	for scanner.Scan() {
		line := scanner.Text()
		lineNumber++

		parts := strings.SplitN(line, "\t", 4)

		if len(parts) < 3 {
			fmt.Printf("שורה %d לא בפורמט תקין\n", lineNumber)
			continue
		}

		timestampStr := parts[0]
		ip := parts[1]
		jsonParts := strings.SplitN(parts[2], "}\t{", 2)
		if len(jsonParts) == 2 {
			jsonParts[0] += "}"
			jsonParts[1] = "{" + jsonParts[1]
		}
		jsonStr := jsonParts[0]

		var query Model.QueryData
		err := json.Unmarshal([]byte(jsonStr), &query)
		if err != nil {
			fmt.Printf("שגיאת JSON בשורה %d: %v\n", lineNumber, err)
			continue
		}

		timestamp, err := time.Parse(time.RFC3339, timestampStr)
		if err != nil {
			fmt.Printf("שגיאת זמן בשורה %d: %v\n", lineNumber, err)
			continue
		}

		entry := Parser.FromQueryRecord(timestamp, ip, query)

		jsonBytes, err := json.Marshal(entry)
		if err != nil {
			fmt.Printf("שגיאת המרה ל-JSON בשורה %d: %v\n", lineNumber, err)
			continue
		}

		_, err = outputFile.WriteString(string(jsonBytes) + "\n")
		if err != nil {
			fmt.Printf("שגיאה בכתיבת שורה %d לקובץ: %v\n", lineNumber, err)
		}
	}

	if err := scanner.Err(); err != nil {
		fmt.Println("שגיאה בקריאת הקובץ:", err)
	}
}
