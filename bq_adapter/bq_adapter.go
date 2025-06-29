package bq_adapter

import (
	"errors"
	"fmt"
	"strings"
	"time"
)

type LogRecord struct {
	Date        string  `json:"date"`
	Country     string  `json:"country"`
	MediaSource string  `json:"media_source"`
	Revenue     float64 `json:"revenue"`
	EventCount  int     `json:"event_count"`
}

type BQRecord struct {
	Date        time.Time `json:"date"`
	Country     string    `json:"country"`
	MediaSource string    `json:"media_source"`
	Revenue     float64   `json:"revenue"`
	EventCount  int       `json:"event_count"`
}

// 🔧 ניסיון לפרש תאריך בכמה פורמטים
func parseFlexibleDate(input string) (time.Time, error) {
	formats := []string{
		"2006-01-02", // פורמט רגיל
		"02-01-2006", // יום-חודש-שנה
		"2006/01/02", // עם /
		"02/01/2006",
		"Jan 2, 2006",
	}

	for _, layout := range formats {
		if t, err := time.Parse(layout, input); err == nil {
			return t, nil
		}
	}

	return time.Time{}, fmt.Errorf("could not parse date: %s", input)
}

func ConvertToBQ(input LogRecord) (BQRecord, error) {
	// 1. תאריך
	parsedDate, err := parseFlexibleDate(strings.TrimSpace(input.Date))
	if err != nil {
		return BQRecord{}, fmt.Errorf("invalid date format: %v", err)
	}

	// 2. שדות חובה
	if strings.TrimSpace(input.Country) == "" {
		return BQRecord{}, errors.New("missing country field")
	}
	if strings.TrimSpace(input.MediaSource) == "" {
		return BQRecord{}, errors.New("missing media_source field")
	}

	// 3. בדיקות ערכים חריגים
	if input.Revenue < 0 {
		return BQRecord{}, errors.New("revenue cannot be negative")
	}
	if input.EventCount < 0 {
		return BQRecord{}, errors.New("event_count cannot be negative")
	}

	// 4. המרה
	return BQRecord{
		Date:        parsedDate,
		Country:     input.Country,
		MediaSource: input.MediaSource,
		Revenue:     input.Revenue,
		EventCount:  input.EventCount,
	}, nil
}
// ConvertListToBQ מקבלת רשימת רשומות לוג ומחזירה רשימות מומרות + שגיאות
func ConvertListToBQ(inputs []LogRecord) ([]BQRecord, []error) {
	var validRecords []BQRecord
	var errorsList []error

	for i, record := range inputs {
		bq, err := ConvertToBQ(record)
		if err != nil {
			errorsList = append(errorsList, fmt.Errorf("record %d: %v", i, err))
			continue
		}
		validRecords = append(validRecords, bq)
	}

	return validRecords, errorsList
}
