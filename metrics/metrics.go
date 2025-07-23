package metrics

import (
	"log"
	"time"
	"github.com/DataDog/datadog-go/statsd"
	"fmt"
)

var Client *statsd.Client

func Init() {
	var err error
	Client, err = statsd.New("127.0.0.1:8125")
	if err != nil {
		log.Fatalf("❌ Failed to initialize Datadog statsd client: %v", err)
	}
}

func Success(batch int, count int) {
	err := Client.Incr("loadtool.query.success", []string{
		"batch:" + itoa(batch),
		"records:" + itoa(count),
	}, 1)
	if err != nil {
		log.Printf("⚠️ Failed to send success metric: %v", err)
	}
}

func Failure(batch int) {
	err := Client.Incr("loadtool.query.failure", []string{
		"batch:" + itoa(batch),
	}, 1)
	if err != nil {
		log.Printf("⚠️ Failed to send failure metric: %v", err)
	}
}

func Timing(start time.Time, name string) {
	duration := time.Since(start)
	err := Client.Timing(name, duration, nil, 1)
	if err != nil {
		log.Printf("⚠️ Failed to send timing metric: %v", err)
	}
}

func itoa(i int) string {
	return fmt.Sprintf("%d", i)
}
