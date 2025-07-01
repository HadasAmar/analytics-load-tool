package Writer

import (
	"context"
	"errors"
	"log"

	"cloud.google.com/go/bigquery"
	"google.golang.org/api/option"
)

type BQWriter struct {
	client    *bigquery.Client
	datasetID string
	tableID   string
}

func NewBQWriter(ctx context.Context, credentialsFile, projectID, datasetID, tableID string) (*BQWriter, error) {
	log.Println("🔌 Connecting to BigQuery...")
	client, err := bigquery.NewClient(ctx, projectID, option.WithCredentialsFile(credentialsFile))
	if err != nil {
		log.Printf(" Failed to create BigQuery client: %v\n", err)
		return nil, err
	}

	log.Println(" Successfully connected to BigQuery.")
	return &BQWriter{
		client:    client,
		datasetID: datasetID,
		tableID:   tableID,
	}, nil
}

// Write receives a slice of structs (as []interface{}) and writes to BigQuery
func (w *BQWriter) Write(data []interface{}) error {
	if len(data) == 0 {
		return errors.New("no valid records to write")
	}
	inserter := w.client.Dataset(w.datasetID).Table(w.tableID).Inserter()

	log.Printf("Writing %d records to BigQuery...\n", len(data))
	if err := inserter.Put(context.Background(), data); err != nil {
		return err
	}

	log.Printf(" Successfully wrote %d records to BigQuery.\n", len(data))
	return nil
}
