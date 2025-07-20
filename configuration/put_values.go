package configuration

import (
	"go.mongodb.org/mongo-driver/bson/primitive"
	"github.com/hashicorp/consul/api"
)


// General function to write value by key
func (c *ConsulClient) PutRawValue(key, value string) error {
    kv := c.client.KV()
    p := &api.KVPair{Key: key, Value: []byte(value)}
    _, err := kv.Put(p, nil)
    return err
}

func SaveLastProcessedID(id primitive.ObjectID) error {
	return GlobalConsulClient.PutRawValue("loadtool/config/last_processed_id", id.Hex())
}
