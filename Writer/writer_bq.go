package Writer

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

// Runner אחראי על הרצת שאילתות מול BigQuery
type Runner struct {
	BQClient *bigquery.Client
}

// NewRunner יוצר ראנר עם client לפי credentials
func NewRunner(ctx context.Context, projectID string, credsPath string) (*Runner, error) {
	client, err := bigquery.NewClient(ctx, projectID, option.WithCredentialsFile(credsPath))
	if err != nil {
		log.Printf("❌ Failed to create BigQuery client: %v", err)
		return nil, fmt.Errorf("failed to create BQ client: %w", err)
	}
	log.Println("✅ BigQuery client created successfully")
	return &Runner{BQClient: client}, nil
}

// RunQuery מריץ ParsedQuery מול BigQuery ומחזיר משך זמן ותגובה
func (r *Runner) RunQuery(ctx context.Context, parsed *Model.ParsedQuery) (time.Duration, string, error) {
	queryStr := Formatter.BuildSQLQuery(parsed)

	log.Println("📥 Preparing to run query:")
	fmt.Println(Formatter.PrettySQL(queryStr)) // הדפסת השאילתה באופן קריא

	query := r.BQClient.Query(queryStr)
	start := time.Now()

	// ניסיון להריץ את השאילתה
	job, err := query.Run(ctx)
	if err != nil {
		log.Printf("❌ [Run Failure] Could not start query. Error: %v", err)
		return 0, "", fmt.Errorf("failed to run query: %w", err)
	}

	// ממתין לסיום הריצה
	status, err := job.Wait(ctx)
	duration := time.Since(start)

	if err != nil {
		log.Printf("❌ [Wait Failure] Failed while waiting for job to finish. Error: %v", err)
		return duration, "", fmt.Errorf("job wait failed: %w", err)
	}

	// בודק אם הייתה שגיאת ביצוע מה-BQ
	if status.Err() != nil {
		log.Printf("❌ [Execution Failure] Query failed in BigQuery. JobID: %s | Error: %v", job.ID(), status.Err())
		return duration, "", fmt.Errorf("job execution error: %w", status.Err())
	}

	// הצלחה מלאה
	log.Printf("✅ [Success] Query succeeded in %s | JobID: %s", duration, job.ID())
	return duration, job.ID(), nil
}
