package main

import (
    "fmt"
    "os"
    "path/filepath"
)

func main() {
    if len(os.Args) < 2 {
        fmt.Println("Usage: go run main.go <filename>")
        return
    }

    filename := os.Args[1]
    ext := filepath.Ext(filename)

    switch ext {
    case ".json":
        processJSONFile(filename)
    case ".csv":
        processCSVFile(filename)
    case ".log":
        processLogFile(filename)
    default:
        fmt.Println("Unsupported file type:", ext)
    }
}
