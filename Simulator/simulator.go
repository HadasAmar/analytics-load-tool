// Simulator/grouped_replay.go
package Simulator

import (
    "context"
    "fmt"
    "sort"
    "sync"
    "time"

    "github.com/HadasAmar/analytics-load-tool/Model"
    "github.com/HadasAmar/analytics-load-tool/Runner"
    "github.com/HadasAmar/analytics-load-tool/configuration"
    Formatter "github.com/HadasAmar/analytics-load-tool/formatter"
)

func ReplaySpeedup(d time.Duration, factor float64) time.Duration {
    if factor <= 0 {
        return d
    }
    return time.Duration(float64(d) / factor)
}

func SimulateReplayGrouped(
    records []*Model.ParsedRecord,
    sqlFormatter Formatter.Formatter,
    runner Runner.QueryRunner,
    ctx context.Context,
    overrideTable string,
    wg *sync.WaitGroup,
) error {
    if len(records) == 0 {
        return nil
    }

    sort.Slice(records, func(i, j int) bool {
        return records[i].LogTime.Before(records[j].LogTime)
    })

    var groups [][]*Model.ParsedRecord
    groups = append(groups, []*Model.ParsedRecord{records[0]})
    for _, rec := range records[1:] {
        last := groups[len(groups)-1][0]
        if rec.LogTime.Equal(last.LogTime) {
            groups[len(groups)-1] = append(groups[len(groups)-1], rec)
        } else {
            groups = append(groups, []*Model.ParsedRecord{rec})
        }
    }

    speed := configuration.GetSpeedFactor(configuration.GlobalConsulClient)
    prevTS := groups[0][0].LogTime

    for gi, group := range groups {
        fmt.Printf("[%s] Group %d (items: %d)\n",
            time.Now().Format("15:04:05.000"), gi, len(group),
        )

        // תמיד מחשבים sleep, גם עבור gi=0 (יהיה 0)
        delay := group[0].LogTime.Sub(prevTS)
        adjusted := ReplaySpeedup(delay, speed)

        start := time.Now()
        time.Sleep(adjusted)
        actual := time.Since(start)

        deviation := actual - adjusted
        fmt.Printf("  planned = %v, adjusted = %v, actual = %v, deviation = %v\n",
            delay, adjusted, actual, deviation,
        )

        prevTS = group[0].LogTime

        for _, rec := range group {
            if rec == nil || rec.Parsed == nil {
                continue
            }
            if overrideTable != "" {
                rec.Parsed.TableName = overrideTable
            }

            wg.Add(1)
            go func(r *Model.ParsedRecord) {
                defer wg.Done()

                res, err := sqlFormatter.Format(r.Parsed)
                if err != nil {
                    fmt.Printf("Format error: %v\n", err)
                    return
                }
                raw := res.(string)
                dur, jobID, err := runner.RunRawQuery(ctx, raw)
                if err != nil {
                    fmt.Printf("Query failed: %v\n", err)
                } else {
                    fmt.Printf("Query succeeded | Duration: %v | Job ID: %s\n", dur, jobID)
                }
            }(rec)
        }
    }

    return nil
}
