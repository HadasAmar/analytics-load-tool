package Writer

import (
	"context"
	"errors"
	"log"

	"cloud.google.com/go/bigquery"
	"github.com/HadasAmar/analytics-load-tool/formatter"
	"google.golang.org/api/option"
)

// BQWriter handles writing formatted records to BigQuery
type BQWriter struct {
	client    *bigquery.Client
	datasetID string
	tableID   string
}

// NewBQWriter creates a new BQWriter with credentials and target table info
func NewBQWriter(ctx context.Context, credentialsFile, projectID, datasetID, tableID string) (*BQWriter, error) {
	log.Println("🔌 Connecting to BigQuery...")

	client, err := bigquery.NewClient(ctx, projectID, option.WithCredentialsFile(credentialsFile))
	if err != nil {
		log.Printf(" Failed to create BigQuery client: %v\n", err)
		return nil, err
	}

	log.Println("Successfully connected to BigQuery.")
	return &BQWriter{
		client:    client,
		datasetID: datasetID,
		tableID:   tableID,
	}, nil
}

// Write accepts a slice of FormattedRecord (must be the same type)
func (w *BQWriter) Write(data []formatter.FormattedRecord) error {
	if len(data) == 0 {
		log.Println(" No records to write.")
		return nil
	}

	// Convert interface{} slice to concrete slice of structs
	records := make([]bigquery.ValueSaver, 0, len(data))
	for _, rec := range data {
		if vs, ok := rec.(bigquery.ValueSaver); ok {
			records = append(records, vs)
		} else {
			log.Println("Skipping record: not a valid BigQuery record")
		}
	}

	if len(records) == 0 {
		return errors.New("no valid records to write")
	}

	inserter := w.client.Dataset(w.datasetID).Table(w.tableID).Inserter()
	log.Printf(" Writing %d records to BigQuery...\n", len(records))

	if err := inserter.Put(context.Background(), records); err != nil {
		return err
	}

	log.Printf("Successfully wrote %d records to BigQuery.\n", len(records))
	return nil
}
