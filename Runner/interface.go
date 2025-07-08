package Runner

import (
    "context"
    "time"
)
type QueryRunner interface {
    RunRawQuery(ctx context.Context, sql string) (time.Duration, string, error)
}