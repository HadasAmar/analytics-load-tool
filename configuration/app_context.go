package configuration

import (
    "context"
    "fmt"

    // "github.com/HadasAmar/analytics-load-tool/Reader"
    "github.com/HadasAmar/analytics-load-tool/Runner"
    Formatter "github.com/HadasAmar/analytics-load-tool/formatter"
    mongoLogger "github.com/HadasAmar/analytics-load-tool/mongo"
    "go.mongodb.org/mongo-driver/bson/primitive"
)

type AppContext struct {
    OverrideTable string
    Logger        *mongoLogger.MongoLogger
    BatchSize     int
    LastID        primitive.ObjectID
    Runner        Runner.QueryRunner
    SQLFormatter  Formatter.Formatter
}

// InitAppContext loads all configuration, builds dependencies and returns a ready context.
func InitAppContext(ctx context.Context) (*AppContext, error) {
    // Override table
    overrideTable, err := GetOverrideTable(GlobalConsulClient)
    if err != nil {
        return nil, fmt.Errorf("failed to get override table: %w", err)
    }

    // Mongo config and logger
    mongoCfg, err := GetMongoConfig(GlobalConsulClient)
    if err != nil {
        return nil, fmt.Errorf("failed to get mongo config: %w", err)
    }
    logger, err := mongoLogger.NewMongoLogger(mongoCfg.URI, mongoCfg.Database, mongoCfg.Collection)
    if err != nil {
        return nil, fmt.Errorf("failed to create mongo logger: %w", err)
    }

    // Batch size
    batchSize, err := GetBatchSize(GlobalConsulClient)
    if err != nil {
        return nil, fmt.Errorf("failed to get batch size: %w", err)
    }

    // Last processed ID
    lastID, err := GetLastProcessedID()
    if err != nil {
        return nil, fmt.Errorf("failed to get last processed ID: %w", err)
    }

    // BigQuery runner
    runner, err := Runner.NewBigQueryRunner(ctx, "platform-hackaton-2025", "./credentials.json")
    if err != nil {
        return nil, fmt.Errorf("could not create BigQuery client: %w", err)
    }

    return &AppContext{
        OverrideTable: overrideTable,
        Logger:        logger,
        BatchSize:     batchSize,
        LastID:        lastID,
        Runner:        runner,
        SQLFormatter:  &Formatter.SQLFormatter{},
    }, nil
}
