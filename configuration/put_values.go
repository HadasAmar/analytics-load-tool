package configuration

import (
	"go.mongodb.org/mongo-driver/bson/primitive"
)

func SaveLastProcessedID(id primitive.ObjectID) error {
	return GlobalConsulClient.PutRawValue("loadtool/config/last_processed_id", id.Hex())
}
