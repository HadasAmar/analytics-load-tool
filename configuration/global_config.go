package configuration

import (
	"os"
)

var GlobalConsulClient *ConsulClient

func InitGlobalConsul() error {
	address := os.Getenv("localhost:8500")
	client, err := NewConsulClient(address)
	if err != nil {
		return err
	}
	GlobalConsulClient = client
	return nil
}


