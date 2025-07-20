package configuration

import (
	"fmt"
	"strings"

	"github.com/hashicorp/consul/api"
)

type ConsulClient struct {
	client *api.Client
}

// Function to create a connection and return consul client
func NewConsulClient(address string) (*ConsulClient, error) {
	config := api.DefaultConfig()
	if address != "" {
		config.Address = address
	}

	client, err := api.NewClient(config)
	if err != nil {
		return nil, err
	}

	return &ConsulClient{client: client}, nil
}

// General function to read value by key
// GetRawValue retrieves a required, non-empty string value from Consul by key.
// It returns an error if the key is missing, the value is empty, or there's a read error.
func (c *ConsulClient) GetRawValue(key string) (string, error) {
	kv := c.client.KV()
	pair, _, err := kv.Get(key, nil)
	if err != nil {
		return "", fmt.Errorf("error reading key '%s' from Consul: %w", key, err)
	}

	if pair == nil || strings.TrimSpace(string(pair.Value)) == "" {
		return "", fmt.Errorf("value for key '%s' not found or empty in Consul", key)
	}

	return strings.TrimSpace(string(pair.Value)), nil
}

// General function to write value by key
func (c *ConsulClient) PutRawValue(key, value string) error {
	kv := c.client.KV()
	p := &api.KVPair{Key: key, Value: []byte(value)}
	_, err := kv.Put(p, nil)
	return err
}
