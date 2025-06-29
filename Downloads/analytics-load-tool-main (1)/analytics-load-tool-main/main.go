package main

import (
	"fmt"
	"log"
	"github.com/HadasAmar/analytics-load-tool/Reader"
)

func main() {
	filename := "Reader/logs.csv"

	records, err := Reader.ReadFile(filename)
	if err != nil {
		log.Fatalf("Error reading file: %v", err)
	}

	for i, r := range records {
		fmt.Printf("Record #%d:\n", i+1)
		fmt.Printf("  Timestamp: %s\n", r.Timestamp)
		fmt.Printf("  IP:        %s\n", r.IP)
		fmt.Printf("  RawQuery:  %s\n", r.RawQuery)
		fmt.Println("---------------------------")
	}
}
