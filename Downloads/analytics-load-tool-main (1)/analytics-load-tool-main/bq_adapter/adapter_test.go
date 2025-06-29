package bq_adapter

import (
	"testing"
	
)

func TestParseFlexibleDate(t *testing.T) {
	tests := []struct {
		input    string
		expected string // בתבנית YYYY-MM-DD לצורך השוואה
		wantErr  bool
	}{
		{"2023-06-23", "2023-06-23", false},
		{"23-06-2023", "2023-06-23", false},
		{"2023/06/23", "2023-06-23", false},
		{"23/06/2023", "2023-06-23", false},
		{"Jun 23, 2023", "2023-06-23", false},
		{"invalid-date", "", true},
	}

	for _, tt := range tests {
		got, err := parseFlexibleDate(tt.input)
		if (err != nil) != tt.wantErr {
			t.Errorf("parseFlexibleDate(%q) error = %v, wantErr %v", tt.input, err, tt.wantErr)
			continue
		}
		if !tt.wantErr {
			gotStr := got.Format("2006-01-02")
			if gotStr != tt.expected {
				t.Errorf("parseFlexibleDate(%q) = %v, expected %v", tt.input, gotStr, tt.expected)
			}
		}
	}
}
