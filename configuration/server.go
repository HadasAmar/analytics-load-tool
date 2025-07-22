package configuration

import (
	"encoding/json"
	"log"
	"net/http"
)

// struct לקליטת בקשה מה-React
type ConfigUpdateRequest struct {
	Key   string `json:"key"`
	Value string `json:"value"`
}

// פונקציה שמריצה את שרת ה-API ברקע
func StartConfigApiServer() {
	go func() {
		http.HandleFunc("/api/config/update", func(w http.ResponseWriter, r *http.Request) {
			var req ConfigUpdateRequest
			if err := json.NewDecoder(r.Body).Decode(&req); err != nil {
				http.Error(w, "Invalid request", http.StatusBadRequest)
				return
			}

			err := GlobalConsulClient.PutRawValue(req.Key, req.Value)
			if err != nil {
				http.Error(w, "Failed to write to Consul: "+err.Error(), http.StatusInternalServerError)
				return
			}

			w.WriteHeader(http.StatusOK)
			w.Write([]byte("✅ Updated successfully"))
		})

		log.Println("🌐 Config API server running at http://localhost:8080")
		if err := http.ListenAndServe(":8080", nil); err != nil {
			log.Fatalf("❌ HTTP server failed: %v", err)
		}
	}()
}
