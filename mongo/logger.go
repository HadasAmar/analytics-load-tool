package mongo

import (
	"context"
	"fmt"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Model"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/bson/primitive"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

type MongoLogger struct {
	client       *mongo.Client
	recordColl   *mongo.Collection
	progressColl *mongo.Collection
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
		client:       client,
		recordColl:   client.Database(dbName).Collection(recordCollName),
		progressColl: client.Database(dbName).Collection(progressCollName),
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

func (m *MongoLogger) ReadLogsAfterWithLimit(lastID primitive.ObjectID, limit int) ([]*Model.ParsedRecord, primitive.ObjectID, error) {
	filter := bson.M{
		"_id": bson.M{"$gt": lastID},
	}

	opts := options.Find().
		SetSort(bson.D{{"_id", 1}}).
		SetLimit(int64(limit))

	cursor, err := m.recordColl.Find(context.TODO(), filter, opts)
	if err != nil {
		return nil, primitive.NilObjectID, err
	}
	defer cursor.Close(context.TODO())

	var results []*Model.ParsedRecord
	var latestID primitive.ObjectID

	for cursor.Next(context.TODO()) {
		var doc struct {
			ID        primitive.ObjectID `bson:"_id"`
			Timestamp time.Time          `bson:"timestamp"`
			IP        string             `bson:"ip"`
			Raw       string             `bson:"raw"`
		}

		if err := cursor.Decode(&doc); err != nil {
			continue
		}

		results = append(results, &Model.ParsedRecord{
			LogTime: doc.Timestamp,
			IP:      doc.IP,
			Query:   doc.Raw,
		})
		latestID = doc.ID
	}

	return results, latestID, nil
}

func (m *MongoLogger) DeleteAllRecords() error {
	_, err := m.recordColl.DeleteMany(context.TODO(), bson.M{})
	return err
}
