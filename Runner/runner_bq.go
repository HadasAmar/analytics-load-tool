package Runner

import (
	"context"
	"fmt"
	"log"
	"time"

	"cloud.google.com/go/bigquery"
	"google.golang.org/api/option"

	"github.com/HadasAmar/analytics-load-tool/Formatter"
	"github.com/HadasAmar/analytics-load-tool/Model"
)

type BigQueryRunner struct {
	BQClient *bigquery.Client
}

// NewBigQueryRunner יוצר BQRunner לפי קובץ קרדנשיאלס
func NewBigQueryRunner(ctx context.Context, projectID, credsPath string) (QueryRunner, error) {
	client, err := bigquery.NewClient(ctx, projectID, option.WithCredentialsFile(credsPath))
	if err != nil {
		log.Printf("❌ Failed to create BigQuery client: %v", err)
		return nil, fmt.Errorf("failed to create BQ client: %w", err)
	}
	log.Println("✅ BigQuery client created successfully")
	return &BigQueryRunner{BQClient: client}, nil
}

// RunQuery מריץ ParsedQuery מול BigQuery
func (r *BigQueryRunner) RunQuery(ctx context.Context, parsed *Model.ParsedQuery) (time.Duration, string, error) {
	queryStr := Formatter.BuildSQLQuery(parsed)
	fmt.Println("📥 Running Query:\n" + Formatter.PrettySQL(queryStr))

	query := r.BQClient.Query(queryStr)
	start := time.Now()
	job, err := query.Run(ctx)
	if err != nil {
		return 0, "", fmt.Errorf("failed to run query: %w", err)
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
