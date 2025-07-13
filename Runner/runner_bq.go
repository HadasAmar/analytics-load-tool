package Runner

import (
	"context"
	"fmt"
	"log"
	"time"

	"cloud.google.com/go/bigquery"
	"google.golang.org/api/option"
)

// Struct that holds the BigQuery client instance
type BigQueryRunner struct {
	BQClient *bigquery.Client
}

// Creates a new BigQueryRunner using a credentials JSON file
func NewBigQueryRunner(ctx context.Context, projectID, credsPath string) (*BigQueryRunner, error) {
	client, err := bigquery.NewClient(ctx, projectID, option.WithCredentialsFile(credsPath))
	if err != nil {
		log.Printf(":x: Failed to create BigQuery client: %v", err)

		return nil, fmt.Errorf("failed to create BQ client: %w", err)
	}
	fmt.Println(":white_check_mark: BigQuery client created successfully")
	return &BigQueryRunner{BQClient: client}, nil
}

// Executes a raw SQL query string against BigQuery and returns the duration and job ID
func (r *BigQueryRunner) RunRawQuery(ctx context.Context, queryStr string) (time.Duration, string, error) {

	if queryStr == "" {
		return 0, "", fmt.Errorf("query string is empty – cannot run")
	}

	query := r.BQClient.Query(queryStr)

	// Record the start time
	start := time.Now()

	job, err := query.Run(ctx)
	if err != nil {
		return 0, "", fmt.Errorf("failed to run raw query: %w", err)
	}

	status, err := job.Wait(ctx)

	

	// Calculate duration
	duration := time.Since(start)

	if err != nil {
		return duration, "", fmt.Errorf("job wait failed: %w", err)
	}
	if status.Err() != nil {
		return duration, "", fmt.Errorf("job execution error: %w", status.Err())
	}

	

	// Return duration and job ID on success
	return duration, job.ID(), nil
}
