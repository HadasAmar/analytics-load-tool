package writer

type DestinationWriter interface {
	Write(records []*LogRecord) error
}
