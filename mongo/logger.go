package mongo

import (
	"context"
	"fmt"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Model"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

type MongoLogger struct {
	client         *mongo.Client
	recordColl     *mongo.Collection
	progressColl   *mongo.Collection
}

func NewMongoLogger(uri, dbName, recordCollName, progressCollName string) (*MongoLogger, error) {
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()

	clientOpts := options.Client().ApplyURI(uri)
	client, err := mongo.Connect(ctx, clientOpts)
	if err != nil {
		return nil, err
	}

	return &MongoLogger{
		client:         client,
		recordColl:     client.Database(dbName).Collection(recordCollName),
		progressColl:   client.Database(dbName).Collection(progressCollName),
	}, nil
}

func (m *MongoLogger) SaveLog(record *Model.ParsedRecord) error {
	doc := bson.M{
		"timestamp": record.LogTime,
		"ip":        record.IP,
		"raw":       record.Query,
	}
	_, err := m.recordColl.InsertOne(context.TODO(), doc)
	fmt.Printf("🎉Saved record with timestamp: %s\n", record.LogTime.Format(time.RFC3339))
	return err
}

func (m *MongoLogger) SaveLastProcessedTimestamp(t time.Time) error {
	_, err := m.progressColl.UpdateOne(
		context.TODO(),
		bson.M{"_id": "last_processed"},
		bson.M{"$set": bson.M{"timestamp": t}},
		options.Update().SetUpsert(true),
	)
	return err
}

func (m *MongoLogger) GetLastProcessedTimestamp() (time.Time, error) {
	var result struct {
		Timestamp time.Time `bson:"timestamp"`
	}
	err := m.progressColl.FindOne(context.TODO(), bson.M{"_id": "last_processed"}).Decode(&result)
	if err != nil {
		if err == mongo.ErrNoDocuments {
			return time.Time{}, nil
		}
		return time.Time{}, err
	}
	return result.Timestamp, nil
}
