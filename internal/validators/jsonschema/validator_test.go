package jsonschema

import (
	"context"
	"encoding/json"
	"testing"

	"github.com/hashicorp/terraform-plugin-framework/attr"
	"github.com/hashicorp/terraform-plugin-framework/path"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/hashicorp/terraform-plugin-framework/types/basetypes"
)

func TestNewValidator(t *testing.T) {
	tests := []struct {
		name      string
		schema    string
		wantError bool
	}{
		{
			name:      "valid schema",
			schema:    `{"type": "object", "properties": {"name": {"type": "string"}}}`,
			wantError: false,
		},
		{
			name:      "invalid json",
			schema:    `{invalid}`,
			wantError: true,
		},
		{
			name:      "empty schema",
			schema:    `{}`,
			wantError: false,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			_, err := NewValidator(json.RawMessage(tt.schema))
			if (err != nil) != tt.wantError {
				t.Errorf("NewValidator() error = %v, wantError %v", err, tt.wantError)
			}
		})
	}
}

func TestValidateString(t *testing.T) {
	tests := []struct {
		name       string
		schema     string
		value      string
		wantErrors int
	}{
		{
			name:       "valid string",
			schema:     `{"type": "string"}`,
			value:      "hello",
			wantErrors: 0,
		},
		{
			name:       "valid enum value",
			schema:     `{"type": "string", "enum": ["a", "b", "c"]}`,
			value:      "b",
			wantErrors: 0,
		},
		{
			name:       "invalid enum value",
			schema:     `{"type": "string", "enum": ["a", "b", "c"]}`,
			value:      "d",
			wantErrors: 1,
		},
		{
			name:       "string too short",
			schema:     `{"type": "string", "minLength": 5}`,
			value:      "hi",
			wantErrors: 1,
		},
		{
			name:       "string too long",
			schema:     `{"type": "string", "maxLength": 3}`,
			value:      "hello",
			wantErrors: 1,
		},
		{
			name:       "pattern match",
			schema:     `{"type": "string", "pattern": "^[a-z]+$"}`,
			value:      "hello",
			wantErrors: 0,
		},
		{
			name:       "pattern mismatch",
			schema:     `{"type": "string", "pattern": "^[a-z]+$"}`,
			value:      "Hello123",
			wantErrors: 1,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			v, err := NewValidator(json.RawMessage(tt.schema))
			if err != nil {
				t.Fatalf("NewValidator() error = %v", err)
			}

			diags := v.validateString(tt.value, v.schema, path.Root("test"))
			if len(diags) != tt.wantErrors {
				t.Errorf("validateString() got %d errors, want %d: %v", len(diags), tt.wantErrors, diags)
			}
		})
	}
}

func TestValidateNumber(t *testing.T) {
	tests := []struct {
		name       string
		schema     string
		value      float64
		wantErrors int
	}{
		{
			name:       "valid number",
			schema:     `{"type": "number"}`,
			value:      42.5,
			wantErrors: 0,
		},
		{
			name:       "valid integer",
			schema:     `{"type": "integer"}`,
			value:      42,
			wantErrors: 0,
		},
		{
			name:       "number below minimum",
			schema:     `{"type": "number", "minimum": 10}`,
			value:      5,
			wantErrors: 1,
		},
		{
			name:       "number above maximum",
			schema:     `{"type": "number", "maximum": 100}`,
			value:      150,
			wantErrors: 1,
		},
		{
			name:       "number within range",
			schema:     `{"type": "number", "minimum": 0, "maximum": 100}`,
			value:      50,
			wantErrors: 0,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			v, err := NewValidator(json.RawMessage(tt.schema))
			if err != nil {
				t.Fatalf("NewValidator() error = %v", err)
			}

			diags := v.validateNumber(tt.value, v.schema, path.Root("test"))
			if len(diags) != tt.wantErrors {
				t.Errorf("validateNumber() got %d errors, want %d: %v", len(diags), tt.wantErrors, diags)
			}
		})
	}
}

func TestValidateDynamic_UnknownValues(t *testing.T) {
	schema := `{
		"type": "object",
		"properties": {
			"host": {"type": "string"},
			"port": {"type": "integer"}
		},
		"required": ["host"]
	}`

	v, err := NewValidator(json.RawMessage(schema))
	if err != nil {
		t.Fatalf("NewValidator() error = %v", err)
	}

	unknownDynamic := types.DynamicUnknown()
	diags := v.ValidateDynamic(context.Background(), unknownDynamic, path.Root("config"))
	if len(diags) != 0 {
		t.Errorf("ValidateDynamic() should skip unknown values, got %d errors: %v", len(diags), diags)
	}

	nullDynamic := types.DynamicNull()
	diags = v.ValidateDynamic(context.Background(), nullDynamic, path.Root("config"))
	if len(diags) != 0 {
		t.Errorf("ValidateDynamic() should skip null values, got %d errors: %v", len(diags), diags)
	}
}

func TestValidateObject_RequiredFields(t *testing.T) {
	schema := `{
		"type": "object",
		"properties": {
			"host": {"type": "string"},
			"port": {"type": "integer"},
			"database": {"type": "string"}
		},
		"required": ["host", "database"]
	}`

	v, err := NewValidator(json.RawMessage(schema))
	if err != nil {
		t.Fatalf("NewValidator() error = %v", err)
	}

	attrTypes := map[string]attr.Type{
		"host": types.StringType,
		"port": types.Int64Type,
	}
	attrValues := map[string]attr.Value{
		"host": types.StringValue("localhost"),
		"port": types.Int64Value(5432),
	}
	objValue, diags := basetypes.NewObjectValue(attrTypes, attrValues)
	if diags.HasError() {
		t.Fatalf("NewObjectValue() error = %v", diags)
	}

	validationDiags := v.validateObject(context.Background(), objValue, v.schema, path.Root("config"))
	if len(validationDiags) != 1 {
		t.Errorf("validateObject() should report 1 missing required field, got %d: %v", len(validationDiags), validationDiags)
	}
}

func TestValidateList(t *testing.T) {
	schema := `{
		"type": "array",
		"items": {"type": "string"},
		"minItems": 1,
		"maxItems": 3
	}`

	v, err := NewValidator(json.RawMessage(schema))
	if err != nil {
		t.Fatalf("NewValidator() error = %v", err)
	}

	emptyList, diags := basetypes.NewListValue(types.StringType, []attr.Value{})
	if diags.HasError() {
		t.Fatalf("NewListValue() error = %v", diags)
	}

	validationDiags := v.validateList(context.Background(), emptyList, v.schema, path.Root("items"))
	if len(validationDiags) != 1 {
		t.Errorf("validateList() should report minItems violation, got %d: %v", len(validationDiags), validationDiags)
	}

	tooManyItems, diags := basetypes.NewListValue(types.StringType, []attr.Value{
		types.StringValue("a"),
		types.StringValue("b"),
		types.StringValue("c"),
		types.StringValue("d"),
	})
	if diags.HasError() {
		t.Fatalf("NewListValue() error = %v", diags)
	}

	validationDiags = v.validateList(context.Background(), tooManyItems, v.schema, path.Root("items"))
	if len(validationDiags) != 1 {
		t.Errorf("validateList() should report maxItems violation, got %d: %v", len(validationDiags), validationDiags)
	}

	validList, diags := basetypes.NewListValue(types.StringType, []attr.Value{
		types.StringValue("a"),
		types.StringValue("b"),
	})
	if diags.HasError() {
		t.Fatalf("NewListValue() error = %v", diags)
	}

	validationDiags = v.validateList(context.Background(), validList, v.schema, path.Root("items"))
	if len(validationDiags) != 0 {
		t.Errorf("validateList() should pass for valid list, got %d: %v", len(validationDiags), validationDiags)
	}
}

func TestTypeMatches(t *testing.T) {
	tests := []struct {
		name         string
		schemaType   interface{}
		expectedType string
		want         bool
	}{
		{
			name:         "single type match",
			schemaType:   "string",
			expectedType: "string",
			want:         true,
		},
		{
			name:         "single type mismatch",
			schemaType:   "string",
			expectedType: "number",
			want:         false,
		},
		{
			name:         "array type match",
			schemaType:   []interface{}{"string", "null"},
			expectedType: "string",
			want:         true,
		},
		{
			name:         "array type mismatch",
			schemaType:   []interface{}{"string", "null"},
			expectedType: "number",
			want:         false,
		},
		{
			name:         "nil type always matches",
			schemaType:   nil,
			expectedType: "anything",
			want:         true,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			v := &Validator{schema: &JSONSchema{Type: tt.schemaType}}
			got := v.typeMatches(v.schema, tt.expectedType)
			if got != tt.want {
				t.Errorf("typeMatches() = %v, want %v", got, tt.want)
			}
		})
	}
}
