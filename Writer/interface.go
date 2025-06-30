package Writer

type DestinationWriter interface {
	Write(data interface{}) error
}
