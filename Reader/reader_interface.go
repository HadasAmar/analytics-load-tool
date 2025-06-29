package Reader
type FileReader interface {
	Read(filename string) ([]RawRecord, error)
}
