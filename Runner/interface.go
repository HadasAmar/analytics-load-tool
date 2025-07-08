package Runner

// type DestinationWriter interface {
// 	Write(data interface{}) error
// }

import (
	"context"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Model"
)

type QueryRunner interface {
	RunQuery(ctx context.Context, parsed *Model.ParsedQuery) (time.Duration, string, error)
}
