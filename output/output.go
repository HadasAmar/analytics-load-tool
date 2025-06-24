package Output

import (
	"encoding/json"
	"os"
	"sync"
	"github.com/HadasAmar/analytics-load-tool.git/Model"
)

var (
	lock     sync.Mutex
	filename string
	file     *os.File
)

func WriteJSONL(f string, entry Model.LogEntry) {
	lock.Lock()
	defer lock.Unlock()

	if filename != f || file == nil {
		if file != nil {
			file.Close()
		}
		filename = f
		file, _ = os.OpenFile(f, os.O_CREATE|os.O_APPEND|os.O_WRONLY, 0644)
	}

	bytes, _ := json.Marshal(entry)
	file.WriteString(string(bytes) + "\n")
}
