package writer

import (
	"context"
	"log"
	"strings"

	"cloud.google.com/go/bigquery"
	"google.golang.org/api/option"
)

type BQWriter struct {
	client    *bigquery.Client
	datasetID string
	tableID   string
}

func NewBQWriter(ctx context.Context, credentialsFile, projectID, datasetID, tableID string) (*BQWriter, error) {
	log.Println("🔄 מתחיל תהליך התחברות ל-BigQuery...")

	client, err := bigquery.NewClient(ctx, projectID, option.WithCredentialsFile(credentialsFile))
	if err != nil {
		log.Printf("❌ שגיאה ביצירת BigQuery client: %v\n", err)
		return nil, err
	}

	log.Println("✅ התחברת בהצלחה ל-BigQuery.")
	return &BQWriter{
		client:    client,
		datasetID: datasetID,
		tableID:   tableID,
	}, nil
}

func (w *BQWriter) Write(records []*LogRecord) error {
	log.Printf("📝 מתחיל כתיבה ל-BigQuery: %d רשומות...", len(records))

	inserter := w.client.Dataset(w.datasetID).Table(w.tableID).Inserter()
	err := inserter.Put(context.Background(), records)
	if err != nil {
		if strings.Contains(err.Error(), "permission") || strings.Contains(err.Error(), "403") {
			log.Printf("⛔ אין הרשאות לכתוב ל-BigQuery: %v\n", err)
		} else {
			log.Printf("❌ שגיאה בזמן כתיבה: %v\n", err)
		}
		return err
	}

	log.Printf("✅ כתיבה הושלמה בהצלחה. %d רשומות הוזנו.", len(records))
	return nil
}
