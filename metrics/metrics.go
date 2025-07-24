package metrics

import (
	"fmt"
	"log"
	"time"

	"github.com/DataDog/datadog-go/statsd"
)

var Client *statsd.Client

func Init() {
	var err error
	Client, err = statsd.New("127.0.0.1:8125")
	if err != nil {
		log.Fatalf("Failed to initialize Datadog statsd client: %v", err)
	}
}

func Success(batch int, count int) {
	err := Client.Incr("loadtool.query.success", []string{
		"batch:" + itoa(batch),
		"records:" + itoa(count),
	}, 1)
	if err != nil {
		log.Printf("Failed to send success metric: %v", err)
	}
}

func Failure(batch int) {
	err := Client.Incr("loadtool.query.failure", []string{
		"batch:" + itoa(batch),
	}, 1)
	if err != nil {
		log.Printf("Failed to send failure metric: %v", err)
	}
}

func Timing(start time.Time, name string) {
	duration := time.Since(start)
	err := Client.Timing(name, duration, nil, 1)
	if err != nil {
		log.Printf("Failed to send timing metric: %v", err)
	}
}

// NumRecordsSent sends how many records were sent in each batch
func NumRecordsSent(batchNum int, count int) {
	err := Client.Gauge("loadtool.records.sent", float64(count), []string{
		fmt.Sprintf("batch:%d", batchNum),
	}, 1)
	if err != nil {
		log.Printf("⚠️ Failed to send records.sent metric: %v", err)
	}
}

func SingleLogSuccess() {
	err := Client.Incr("loadtool.log.success", nil, 1)
	if err != nil {
		log.Printf("Failed to send single log success metric: %v", err)
	}
}

func Drift(ms float64) {
	err := Client.Gauge("loadtool.log.drift", ms, nil, 1)
	if err != nil {
		log.Printf("Failed to send drift metric: %v", err)
	}
}

func itoa(i int) string {
	return fmt.Sprintf("%d", i)
}
