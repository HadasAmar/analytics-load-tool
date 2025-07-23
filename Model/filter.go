package Model

// FilterNode represents a node in a filter tree used in Druid queries.
type FilterNode struct {
	Type         string        `json:"type"`                   // Filter type: "selector", "bound", "and", "or", "not"
	Dimension    string        `json:"dimension,omitempty"`    // Used for "selector" and "bound" filters
	Value        string        `json:"value,omitempty"`        // Used with "selector" filters
	Lower        string        `json:"lower,omitempty"`        // Used with "bound" filters
	Upper        string        `json:"upper,omitempty"`        // Used with "bound" filters
	Field        *FilterNode   `json:"field,omitempty"`        // Used with "not" filter (single subfilter)
	Fields       []*FilterNode `json:"fields,omitempty"`       // Used with "and"/"or" filters (multiple subfilters)
	ExtractionFn interface{}   `json:"extractionFn,omitempty"` // Optional extraction function
	Ordering     interface{}   `json:"ordering,omitempty"`     // Optional ordering (commonly used in "bound")
}
