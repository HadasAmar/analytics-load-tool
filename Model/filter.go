package Model

type FilterNode struct {
	Type       string        `json:"type"`
	Dimension  string        `json:"dimension,omitempty"`
	Value      string        `json:"value,omitempty"`
	Lower      string        `json:"lower,omitempty"`
	Upper      string        `json:"upper,omitempty"`
	Field      *FilterNode   `json:"field,omitempty"`   // ל־not
	Fields     []FilterNode  `json:"fields,omitempty"`  // ל־and/or
}
