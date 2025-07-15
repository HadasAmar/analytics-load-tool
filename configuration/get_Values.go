package configuration

import (
	"fmt"
	"log"
	"strconv"
	"strings"
)

// Specific function for retrieving speed_factor
func GetSpeedFactor(client *ConsulClient) (string, error) {
	key := "loadtool/config/speed_factor"
	value, err := client.GetRawValue(key)
	if err != nil {
		return "", fmt.Errorf("error reading from Consul: %w", err)
	}

	if value == "" {
		return "", fmt.Errorf("speed_factor not found in Consul")
	}

	return value, nil
}

// GetSpeedFactorValue retrieves the speed factor from Consul and returns it as a float64.
func GetSpeedFactorValue() float64 {
	raw, err := GetSpeedFactor(GlobalConsulClient)
	if err != nil {
		log.Printf("⚠️ error: %v", err)
		return 1.0 //default value if there's an error
	}

	clean := strings.TrimSpace(raw)
	speed, err := strconv.ParseFloat(clean, 64)
	if err != nil {
		log.Printf("⚠️ invalid float: %v", err)
		return 1.0
	}

	return speed
}

// Specific function for retrieving input_language
func GetInputLanguage(client *ConsulClient) (string, error) {
	key := "loadtool/config/input_language"
	value, err := client.GetRawValue(key)
	if err != nil {
		return "", fmt.Errorf("error reading from Consul: %w", err)
	}

	if value == "" {
		return "", fmt.Errorf("input_language not found in Consul")
	}

	return value, nil
}

// Specific function for retrieving output_language
func GetOutputLanguage(client *ConsulClient) (string, error) {
	key := "loadtool/config/output_language"
	value, err := client.GetRawValue(key)
	if err != nil {
		return "", fmt.Errorf("error reading from Consul: %w", err)
	}

	if value == "" {
		return "", fmt.Errorf("output_language not found in Consul")
	}

	return value, nil
}
// GetLogFilePath retrieves the log file path from Consul.
func GetLogFilePath(client *ConsulClient) (string, error) {
    key := "loadtool/config/file_path"
    value, err := client.GetRawValue(key)
    if err != nil {
        return "", fmt.Errorf("error reading from Consul: %w", err)
    }
    if value == "" {
        return "", fmt.Errorf("file_path not found in Consul")
    }
    return value, nil
}
// GetOverrideTable retrieves the override table name from Consul.
func GetOverrideTable(client *ConsulClient) (string, error) {
    key := "loadtool/config/override_table"
    value, err := client.GetRawValue(key)
    if err != nil {
        return "", fmt.Errorf("error reading from Consul: %w", err)
    }

    if value == "" {
        return "", fmt.Errorf("override_table not found in Consul")
    }

    return value, nil
}
