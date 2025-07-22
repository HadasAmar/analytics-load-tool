package configuration

import (
	"os"
)

var GlobalConsulClient *ConsulClient

// global function to initialize the Consul client
func InitGlobalConsul() error {
	address := os.Getenv("CONSUL_ADDRESS")
	if address == "" {
		address = "localhost:8500"
	}
	// Create a new Consul client
	client, err := NewConsulClient(address)
	if err != nil {
		return err
	}
	GlobalConsulClient = client
	return nil
}
