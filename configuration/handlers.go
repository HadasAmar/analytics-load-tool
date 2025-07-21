package configuration

import (
	"fmt"
	"net/http"
)

// Handler עבור שליפת input_language
func InputLanguageHandler(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Access-Control-Allow-Origin", "*")
	w.Header().Set("Content-Type", "application/json")

	val, err := GetInputLanguage(GlobalConsulClient)
	if err != nil {
		http.Error(w, fmt.Sprintf(`{"error":"%s"}`, err.Error()), http.StatusInternalServerError)
		return
	}

	fmt.Fprintf(w, `{"input_language":"%s"}`, val)
}
