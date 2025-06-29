package Writer

type DestinationWriter interface {
	Write(records []*LogRecord) error
}
