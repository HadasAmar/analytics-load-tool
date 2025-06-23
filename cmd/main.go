package main

import (
	"fmt"
	"github.com/HadasAmar/analytics-load-tool.git/Reader"
	"os"
	"path/filepath"
)

func main() {

	fmt.Println("Args:", os.Args)

	if len(os.Args) < 2 {
		fmt.Println("Usage: go run main.go <filename>")
		return
	}

	filename := os.Args[1]
	ext := filepath.Ext(filename)

	switch ext {
	case ".json":
		Reader.ProcessJSONFile(filename)
	case ".csv":
		Reader.ProcessCSVFile(filename)
	case ".log":
		Reader.ProcessLogFile(filename)
	default:
		fmt.Println("Unsupported file type:", ext)
	}
}
