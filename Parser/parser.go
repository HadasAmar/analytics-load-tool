package Parser

import (
	"log"
	"strings"
	"time"
	"github.com/HadasAmar/analytics-load-tool/Model"
	"github.com/HadasAmar/analytics-load-tool/Reader"
)

// function to parse a raw record from the Reader package
func ParseRawRecord(r Reader.RawRecord) *Model.ParsedRecord {
	// ניקוי רווחים מה-IP
	cleanIP := strings.TrimSpace(r.IP)

	if cleanIP == "" {
		log.Printf("⚠️ skipping record with empty IP")
		return nil
	}

	// parse timestamp with fallback
	t, err := time.Parse(time.RFC3339, r.Timestamp)
	if err != nil {
		log.Printf("⚠️ failed to parse timestamp %s: %v", r.Timestamp, err)
		t = time.Time{}
	}

	if r.RawQuery == "" {
		log.Printf("⚠️ missing query data for timestamp %s", r.Timestamp)
		return nil
	}

	// log a successful parse
	log.Printf("✅ Parsed OK: time=%s ip=%s", t.Format(time.RFC3339), cleanIP)

	parsed:= &Model.ParsedRecord{
		LogTime: t,
		IP:      cleanIP,
		Query:   r.RawQuery,
	}
	log.Printf("✅ ParsedRecord Full: %+v", parsed)
	return parsed
}
