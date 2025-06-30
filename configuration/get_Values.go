package configuration

import (
	"fmt"
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
