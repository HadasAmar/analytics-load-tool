package main

import (
	"context"
	"log"
	"sync"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Reader"
	// "github.com/HadasAmar/analytics-load-tool/Runner"
	"github.com/HadasAmar/analytics-load-tool/Simulator"
	"github.com/HadasAmar/analytics-load-tool/configuration"
	// Formatter "github.com/HadasAmar/analytics-load-tool/formatter"
	"github.com/HadasAmar/analytics-load-tool/metrics"
	// mongoLogger "github.com/HadasAmar/analytics-load-tool/mongo"
)

func main() {
    ctx := context.Background()
    metrics.Init()
    defer metrics.Client.Close()

    if err := configuration.InitGlobalConsul(); err != nil {
        log.Fatalf("Failed to initialize Consul: %v", err)
    }

    // קריאה אחת שמחזירה הכל מוכן
    appCtx, err := configuration.InitAppContext(ctx)
    if err != nil {
        log.Fatalf("Failed to initialize application context: %v", err)
    }

    log.Printf("Using batch size: %d", appCtx.BatchSize)
    log.Printf("Resuming from ID: %s", appCtx.LastID.Hex())

    var wg sync.WaitGroup
    var lastTimestamp *time.Time

    for batchNum := 1; ; batchNum++ {
        start := time.Now()

        rawBatch, latestID, err := appCtx.Logger.ReadLogsAfterWithLimit(appCtx.LastID, appCtx.BatchSize)
        if err != nil {
            log.Fatalf("Failed to read batch: %v", err)
        }
        if len(rawBatch) == 0 {
            break
        }

        parsedBatch, err := Reader.ReadParsedRecordsFromMongo(rawBatch)
        if err != nil {
            log.Fatalf("Failed to parse batch: %v", err)
        }

        log.Printf("Sending batch %d with %d records...", batchNum, len(parsedBatch))
        metrics.NumRecordsSent(batchNum, len(parsedBatch))

        err = Simulator.SimulateReplay(parsedBatch, appCtx.SQLFormatter, appCtx.Runner, ctx, appCtx.OverrideTable, &wg, lastTimestamp)
        if err != nil {
            log.Printf("Simulation failed on batch %d: %v", batchNum, err)
        } else {
            metrics.Success(batchNum, len(parsedBatch))
        }

        last := parsedBatch[len(parsedBatch)-1]
        if last != nil {
            appCtx.LastID = latestID
            lastTimestamp = &last.LogTime
            _ = configuration.SaveLastProcessedID(appCtx.LastID)
            log.Printf("Updated checkpoint to: %s", appCtx.LastID.Hex())
        }

       
    }

    wg.Wait()
}
