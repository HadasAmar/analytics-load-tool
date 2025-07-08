package Runner

import (
	"context"
	"fmt"
	"log"
	"time"

	"cloud.google.com/go/bigquery"
	"google.golang.org/api/option"
)

type BigQueryRunner struct {
	BQClient *bigquery.Client
}

// יוצרת BigQueryRunner מתוך קובץ credentials
func NewBigQueryRunner(ctx context.Context, projectID, credsPath string) (*BigQueryRunner, error) {
	client, err := bigquery.NewClient(ctx, projectID, option.WithCredentialsFile(credsPath))
	if err != nil {
		log.Printf(":x: Failed to create BigQuery client: %v", err)
		return nil, fmt.Errorf("failed to create BQ client: %w", err)
	}
	log.Println(":white_check_mark: BigQuery client created successfully")
	return &BigQueryRunner{BQClient: client}, nil
}

// RunRawQuery מריץ מחרוזת SQL גולמית ישירות
func (r *BigQueryRunner) RunRawQuery(ctx context.Context, queryStr string) (time.Duration, string, error) {
	if queryStr == "" {
		return 0, "", fmt.Errorf("query string is empty – cannot run")
	}
	fmt.Println(":inbox_tray: Running SQL Query:\n" + queryStr)
	query := r.BQClient.Query(queryStr)
	start := time.Now()
	job, err := query.Run(ctx)
	if err != nil {
		return 0, "", fmt.Errorf("failed to run raw query: %w", err)
	}
	status, err := job.Wait(ctx)
	duration := time.Since(start)
	if err != nil {
		return duration, "", fmt.Errorf("job wait failed: %w", err)
	}
	if status.Err() != nil {
		return duration, "", fmt.Errorf("job execution error: %w", status.Err())
	}
	return duration, job.ID(), nil
}
