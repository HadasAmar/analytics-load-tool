package Parser

import (
	"time"
	"github.com/HadasAmar/analytics-load-tool.git/Model"
)

type StandardLogRecord struct {
	AppID    string
	Campaign string
	Source   string
	Clicks   int
	Installs int
	LogTime  time.Time
	IP       string
}

func FromLogEntry(entry Model.LogEntry) StandardLogRecord {
	return StandardLogRecord{
		AppID:    entry.AppID,
		Campaign: entry.Campaign,
		Source:   entry.Source,
		Clicks:   entry.Clicks,
		Installs: entry.Installs,
		LogTime:  entry.LogTime,
		IP:       entry.IP,
	}
}

func FromCSVRow(row map[string]string) StandardLogRecord {
	return StandardLogRecord{
		AppID:    row["app_id"],
		Campaign: row["campaign"],
		Source:   row["source"],
	}
}
