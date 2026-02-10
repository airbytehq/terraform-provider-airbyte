package provider

import (
	"encoding/json"
	"testing"

	"github.com/hashicorp/terraform-plugin-framework/types"
)

func TestExtractJSONString(t *testing.T) {
	tests := []struct {
		name     string
		raw      map[string]json.RawMessage
		key      string
		expected string
	}{
		{
			name:     "existing key",
			raw:      map[string]json.RawMessage{"source_id": json.RawMessage(`"src-123"`)},
			key:      "source_id",
			expected: "src-123",
		},
		{
			name:     "missing key",
			raw:      map[string]json.RawMessage{},
			key:      "source_id",
			expected: "",
		},
		{
			name:     "non-string value",
			raw:      map[string]json.RawMessage{"count": json.RawMessage(`42`)},
			key:      "count",
			expected: "",
		},
		{
			name:     "null value",
			raw:      map[string]json.RawMessage{"source_id": json.RawMessage(`null`)},
			key:      "source_id",
			expected: "",
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result := extractJSONString(tt.raw, tt.key)
			if result != tt.expected {
				t.Errorf("extractJSONString(%v, %q) = %q, want %q", tt.raw, tt.key, result, tt.expected)
			}
		})
	}
}

func TestExtractJSONTypesString(t *testing.T) {
	tests := []struct {
		name       string
		raw        map[string]json.RawMessage
		key        string
		expectNull bool
		expected   string
	}{
		{
			name:     "existing key",
			raw:      map[string]json.RawMessage{"name": json.RawMessage(`"my-source"`)},
			key:      "name",
			expected: "my-source",
		},
		{
			name:       "missing key returns null",
			raw:        map[string]json.RawMessage{},
			key:        "name",
			expectNull: true,
		},
		{
			name:       "empty string returns null",
			raw:        map[string]json.RawMessage{"name": json.RawMessage(`""`)},
			key:        "name",
			expectNull: true,
		},
		{
			name:       "non-string value returns null",
			raw:        map[string]json.RawMessage{"count": json.RawMessage(`42`)},
			key:        "count",
			expectNull: true,
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result := extractJSONTypesString(tt.raw, tt.key)
			if tt.expectNull {
				if !result.IsNull() {
					t.Errorf("expected null, got %v", result)
				}
			} else {
				if result.IsNull() {
					t.Error("expected non-null value, got null")
				}
				if result.ValueString() != tt.expected {
					t.Errorf("got %q, want %q", result.ValueString(), tt.expected)
				}
			}
		})
	}
}

func TestExtractJSONInt64(t *testing.T) {
	tests := []struct {
		name       string
		raw        map[string]json.RawMessage
		key        string
		expectNull bool
		expected   int64
	}{
		{
			name:     "integer value",
			raw:      map[string]json.RawMessage{"created_at": json.RawMessage(`1234567890`)},
			key:      "created_at",
			expected: 1234567890,
		},
		{
			name:     "string integer value",
			raw:      map[string]json.RawMessage{"created_at": json.RawMessage(`"1234567890"`)},
			key:      "created_at",
			expected: 1234567890,
		},
		{
			name:       "missing key returns null",
			raw:        map[string]json.RawMessage{},
			key:        "created_at",
			expectNull: true,
		},
		{
			name:       "non-numeric value returns null",
			raw:        map[string]json.RawMessage{"created_at": json.RawMessage(`"not-a-number"`)},
			key:        "created_at",
			expectNull: true,
		},
		{
			name:     "null value decodes to zero",
			raw:      map[string]json.RawMessage{"created_at": json.RawMessage(`null`)},
			key:      "created_at",
			expected: 0,
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result := extractJSONInt64(tt.raw, tt.key)
			if tt.expectNull {
				if !result.IsNull() {
					t.Errorf("expected null, got %v", result)
				}
			} else {
				if result.IsNull() {
					t.Error("expected non-null value, got null")
				}
				if result.ValueInt64() != tt.expected {
					t.Errorf("got %d, want %d", result.ValueInt64(), tt.expected)
				}
			}
		})
	}
}

func TestSourceMoveStateFiltering(t *testing.T) {
	r := &SourceResource{}
	movers := r.MoveState(nil)
	if len(movers) != 1 {
		t.Fatalf("expected 1 state mover, got %d", len(movers))
	}
}

func TestDestinationMoveStateFiltering(t *testing.T) {
	r := &DestinationResource{}
	movers := r.MoveState(nil)
	if len(movers) != 1 {
		t.Fatalf("expected 1 state mover, got %d", len(movers))
	}
}

func TestSourceMoveStateImplementsInterface(t *testing.T) {
	var _ types.String
	var r SourceResource
	_ = r.MoveState(nil)
}

func TestDestinationMoveStateImplementsInterface(t *testing.T) {
	var _ types.String
	var r DestinationResource
	_ = r.MoveState(nil)
}
