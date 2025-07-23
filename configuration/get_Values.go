package configuration

import (
	"fmt"
	"log"
	"strconv"

	"go.mongodb.org/mongo-driver/bson/primitive"
)

// generic function to retrieve an integer value from Consul
func GetIntValue(client *ConsulClient, key string, name string) (int, error) {
	raw, err := client.GetRawValue(key)
	if err != nil {
		return 0, err
	}
	n, err := strconv.Atoi(raw)
	if err != nil || n <= 0 {
		return 0, fmt.Errorf("invalid %s value: %s", name, raw)
	}
	return n, nil
}

func GetFloatValue(client *ConsulClient, key string, name string) (float64, error) {
	raw, err := client.GetRawValue(key)
	if err != nil {
		return 0, err
	}
	val, err := strconv.ParseFloat(raw, 64)
	if err != nil {
		return 0, fmt.Errorf("invalid %s value: %s", name, raw)
	}
	return val, nil
}

// generic function to retrieve an ObjectID value from Consul
func GetObjectIDValue(client *ConsulClient, key string, name string) (primitive.ObjectID, error) {
	raw, err := client.GetRawValue(key)
	if err != nil {
		return primitive.NilObjectID, err
	}
	return primitive.ObjectIDFromHex(raw)
}

// GetSpeedFactor retrieves the speed_factor as float64 from Consul,
// or returns 1.0 if there's an error or invalid value.
func GetSpeedFactor(client *ConsulClient) float64 {
	val, err := GetFloatValue(client, "loadtool/config/speed_factor", "speed_factor")
	if err != nil {
		log.Printf("using default speed_factor=1.0 due to error: %v", err)
		return 1.0
	}
	return val
}

// Specific function for retrieving input_language
func GetInputLanguage(client *ConsulClient) (string, error) {
	return client.GetRawValue("loadtool/config/input_language")
}

// Specific function for retrieving output_language
func GetOutputLanguage(client *ConsulClient) (string, error) {
	return client.GetRawValue("loadtool/config/output_language")
}

// GetLogFilePath retrieves the log file path from Consul.
func GetLogFilePath(client *ConsulClient) (string, error) {
	return client.GetRawValue("loadtool/config/file_path")
}

// GetOverrideTable retrieves the override table name from Consul.
func GetOverrideTable(client *ConsulClient) (string, error) {
	return client.GetRawValue("loadtool/config/override_table")
}

// GetBatchSize retrieves batch_size as int from Consul.
func GetBatchSize(client *ConsulClient) (int, error) {
	return GetIntValue(client, "loadtool/config/batch_size", "batch_size")
}

// GetLastProcessedID retrieves last_processed_id as ObjectID from Consul.
func GetLastProcessedID() (primitive.ObjectID, error) {
	return GetObjectIDValue(GlobalConsulClient, "loadtool/config/last_processed_id", "last_processed_id")
}

type MongoConfig struct {
	URI        string
	Database   string
	Collection string
}

// GetMongoConfig retrieves MongoDB configuration details from Consul.
func GetMongoConfig(client *ConsulClient) (*MongoConfig, error) {
	uri, err := client.GetRawValue("loadtool/config/mongo_uri")
	if err != nil {
		return nil, err
	}

	db, err := client.GetRawValue("loadtool/config/mongo_db")
	if err != nil {
		return nil, err
	}

	collection, err := client.GetRawValue("loadtool/config/mongo_collection")
	if err != nil {
		return nil, err
	}

	return &MongoConfig{
		URI:        uri,
		Database:   db,
		Collection: collection,
	}, nil
}
