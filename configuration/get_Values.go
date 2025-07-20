package configuration

import (
	"fmt"
	"log"
	"strconv"
	"strings"

	"go.mongodb.org/mongo-driver/bson/primitive"
)

// generic function to retrieve a required string value from Consul
func GetRequiredString(client *ConsulClient, key string, name string) (string, error) {
	value, err := client.GetRawValue(key)
	if err != nil {
		return "", fmt.Errorf("error reading %s from Consul: %w", name, err)
	}
	if strings.TrimSpace(value) == "" {
		return "", fmt.Errorf("%s not found or empty in Consul", name)
	}
	return strings.TrimSpace(value), nil
}

// generic function to retrieve an integer value from Consul
func GetIntValue(client *ConsulClient, key string, name string) (int, error) {
	raw, err := GetRequiredString(client, key, name)
	if err != nil {
		return 0, err
	}
	n, err := strconv.Atoi(raw)
	if err != nil || n <= 0 {
		return 0, fmt.Errorf("invalid %s value: %s", name, raw)
	}
	return n, nil
}

//generic function to retrieve an ObjectID value from Consul
func GetObjectIDValue(client *ConsulClient, key string, name string) (primitive.ObjectID, error) {
	raw, err := GetRequiredString(client, key, name)
	if err != nil {
		return primitive.NilObjectID, err
	}
	return primitive.ObjectIDFromHex(raw)
}

// Specific function for retrieving speed_factor
func GetSpeedFactor(client *ConsulClient) (string, error) {
	return GetRequiredString(client, "loadtool/config/speed_factor", "speed_factor")
}

// GetSpeedFactorValue retrieves the speed factor from Consul and returns it as a float64.
func GetSpeedFactorValue() float64 {
	raw, err := GetSpeedFactor(GlobalConsulClient)
	if err != nil {
		log.Printf("error: %v", err)
		return 1.0 // default value if there's an error
	}

	clean := strings.TrimSpace(raw)
	speed, err := strconv.ParseFloat(clean, 64)
	if err != nil {
		log.Printf("invalid float: %v", err)
		return 1.0
	}

	return speed
}

// Specific function for retrieving input_language
func GetInputLanguage(client *ConsulClient) (string, error) {
	return GetRequiredString(client, "loadtool/config/input_language", "input_language")
}

// Specific function for retrieving output_language
func GetOutputLanguage(client *ConsulClient) (string, error) {
	return GetRequiredString(client, "loadtool/config/output_language", "output_language")
}

// GetLogFilePath retrieves the log file path from Consul.
func GetLogFilePath(client *ConsulClient) (string, error) {
	return GetRequiredString(client, "loadtool/config/file_path", "file_path")
}

// GetOverrideTable retrieves the override table name from Consul.
func GetOverrideTable(client *ConsulClient) (string, error) {
	return GetRequiredString(client, "loadtool/config/override_table", "override_table")
}

func GetBatchSize(client *ConsulClient) (int, error) {
	return GetIntValue(client, "loadtool/config/batch_size", "batch_size")
}

func GetLastProcessedID() (primitive.ObjectID, error) {
	return GetObjectIDValue(GlobalConsulClient, "loadtool/config/last_processed_id", "last_processed_id")
}
