package Model


type FilterNode struct {
	Type         string         `json:"type"`                    // "selector", "bound", "and", "or", "not"
	Dimension    string         `json:"dimension,omitempty"`     // לשאילתות כמו selector, bound
	Value        string         `json:"value,omitempty"`         // לשימוש עם selector
	Lower        string         `json:"lower,omitempty"`         // לשימוש עם bound
	Upper        string         `json:"upper,omitempty"`         // לשימוש עם bound
	Field        *FilterNode    `json:"field,omitempty"`         // עבור פילטר מסוג NOT
	Fields       []*FilterNode  `json:"fields,omitempty"`        // עבור AND / OR – כאן בדיוק נכנס Fields שאת שואלת עליו
	ExtractionFn interface{}    `json:"extractionFn,omitempty"`  // אם יש פונקציית המרה
	Ordering     interface{}    `json:"ordering,omitempty"`      // לרוב ב־bound
}
