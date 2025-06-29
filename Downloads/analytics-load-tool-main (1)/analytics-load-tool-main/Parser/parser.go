package Parser

import (
	"time"

	"github.com/HadasAmar/analytics-load-tool/Reader"
)

// המבנה האחיד
type ParsedRecord struct {
	LogTime time.Time
	IP      string
	Query   string
}

// פונקציה שממירה RawRecord ל ParsedRecord
func ParseRawRecord(r Reader.RawRecord) *ParsedRecord {
	// מנסה לפרסר timestamp
	t, err := time.Parse(time.RFC3339, r.Timestamp)
	if err != nil {
		// אם כשל, מחזיר אפס זמן
		t = time.Time{}
	}

	return &ParsedRecord{
		LogTime: t,
		IP:      r.IP,
		Query:   r.RawQuery, // לא נוגעים בתוכן
	}
}
