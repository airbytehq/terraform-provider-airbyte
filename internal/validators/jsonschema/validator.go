// Package jsonschema provides unknown-aware JSON Schema validation for Terraform.
// This validator traverses Terraform Dynamic values alongside JSON Schema,
// validating known values while skipping validation for unknown values.
package jsonschema

import (
	"context"
	"encoding/json"
	"fmt"
	"regexp"

	"github.com/hashicorp/terraform-plugin-framework/attr"
	"github.com/hashicorp/terraform-plugin-framework/diag"
	"github.com/hashicorp/terraform-plugin-framework/path"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/hashicorp/terraform-plugin-framework/types/basetypes"
)

// JSONSchema represents a JSON Schema document
type JSONSchema struct {
	Type                 interface{}            `json:"type"`
	Properties           map[string]*JSONSchema `json:"properties"`
	AdditionalProperties interface{}            `json:"additionalProperties"`
	Required             []string               `json:"required"`
	Enum                 []interface{}          `json:"enum"`
	Minimum              *float64               `json:"minimum"`
	Maximum              *float64               `json:"maximum"`
	MinLength            *int                   `json:"minLength"`
	MaxLength            *int                   `json:"maxLength"`
	Pattern              *string                `json:"pattern"`
	Items                *JSONSchema            `json:"items"`
	MinItems             *int                   `json:"minItems"`
	MaxItems             *int                   `json:"maxItems"`
	Default              interface{}            `json:"default"`
	Title                string                 `json:"title"`
	Description          string                 `json:"description"`
}

// Validator validates Terraform Dynamic values against JSON Schema
type Validator struct {
	schema *JSONSchema
}

// NewValidator creates a new Validator from a JSON Schema
func NewValidator(schemaJSON json.RawMessage) (*Validator, error) {
	var schema JSONSchema
	if err := json.Unmarshal(schemaJSON, &schema); err != nil {
		return nil, fmt.Errorf("failed to parse JSON Schema: %w", err)
	}
	return &Validator{schema: &schema}, nil
}

// ValidateDynamic validates a Terraform Dynamic value against the schema
// It returns diagnostics for any validation errors found in known values
// Unknown values are skipped (validation deferred to apply time)
func (v *Validator) ValidateDynamic(ctx context.Context, value types.Dynamic, basePath path.Path) diag.Diagnostics {
	var diags diag.Diagnostics

	if value.IsNull() {
		return diags
	}

	if value.IsUnknown() {
		return diags
	}

	underlyingValue := value.UnderlyingValue()
	diags.Append(v.validateValue(ctx, underlyingValue, v.schema, basePath)...)

	return diags
}

// validateValue recursively validates a Terraform attribute value against a JSON Schema
func (v *Validator) validateValue(ctx context.Context, value attr.Value, schema *JSONSchema, attrPath path.Path) diag.Diagnostics {
	var diags diag.Diagnostics

	if value == nil || value.IsNull() {
		return diags
	}

	if value.IsUnknown() {
		return diags
	}

	switch val := value.(type) {
	case basetypes.StringValue:
		diags.Append(v.validateString(val.ValueString(), schema, attrPath)...)
	case basetypes.Int64Value:
		diags.Append(v.validateNumber(float64(val.ValueInt64()), schema, attrPath)...)
	case basetypes.Float64Value:
		diags.Append(v.validateNumber(val.ValueFloat64(), schema, attrPath)...)
	case basetypes.NumberValue:
		f, _ := val.ValueBigFloat().Float64()
		diags.Append(v.validateNumber(f, schema, attrPath)...)
	case basetypes.BoolValue:
		diags.Append(v.validateBool(val.ValueBool(), schema, attrPath)...)
	case basetypes.ObjectValue:
		diags.Append(v.validateObject(ctx, val, schema, attrPath)...)
	case basetypes.MapValue:
		diags.Append(v.validateMap(ctx, val, schema, attrPath)...)
	case basetypes.ListValue:
		diags.Append(v.validateList(ctx, val, schema, attrPath)...)
	case basetypes.TupleValue:
		diags.Append(v.validateTuple(ctx, val, schema, attrPath)...)
	case basetypes.SetValue:
		diags.Append(v.validateSet(ctx, val, schema, attrPath)...)
	}

	return diags
}

// validateString validates a string value against schema constraints
func (v *Validator) validateString(val string, schema *JSONSchema, attrPath path.Path) diag.Diagnostics {
	var diags diag.Diagnostics

	if !v.typeMatches(schema, "string") {
		diags.AddAttributeError(
			attrPath,
			"Type Mismatch",
			fmt.Sprintf("Expected %v, got string", schema.Type),
		)
		return diags
	}

	if schema.Enum != nil {
		found := false
		for _, e := range schema.Enum {
			if str, ok := e.(string); ok && str == val {
				found = true
				break
			}
		}
		if !found {
			diags.AddAttributeError(
				attrPath,
				"Invalid Enum Value",
				fmt.Sprintf("Value %q is not one of the allowed values: %v", val, schema.Enum),
			)
		}
	}

	if schema.MinLength != nil && len(val) < *schema.MinLength {
		diags.AddAttributeError(
			attrPath,
			"String Too Short",
			fmt.Sprintf("String length %d is less than minimum %d", len(val), *schema.MinLength),
		)
	}

	if schema.MaxLength != nil && len(val) > *schema.MaxLength {
		diags.AddAttributeError(
			attrPath,
			"String Too Long",
			fmt.Sprintf("String length %d exceeds maximum %d", len(val), *schema.MaxLength),
		)
	}

	if schema.Pattern != nil {
		re, err := regexp.Compile(*schema.Pattern)
		if err == nil && !re.MatchString(val) {
			diags.AddAttributeError(
				attrPath,
				"Pattern Mismatch",
				fmt.Sprintf("Value %q does not match pattern %q", val, *schema.Pattern),
			)
		}
	}

	return diags
}

// validateNumber validates a numeric value against schema constraints
func (v *Validator) validateNumber(val float64, schema *JSONSchema, attrPath path.Path) diag.Diagnostics {
	var diags diag.Diagnostics

	if !v.typeMatches(schema, "number") && !v.typeMatches(schema, "integer") {
		diags.AddAttributeError(
			attrPath,
			"Type Mismatch",
			fmt.Sprintf("Expected %v, got number", schema.Type),
		)
		return diags
	}

	if schema.Enum != nil {
		found := false
		for _, e := range schema.Enum {
			if num, ok := e.(float64); ok && num == val {
				found = true
				break
			}
		}
		if !found {
			diags.AddAttributeError(
				attrPath,
				"Invalid Enum Value",
				fmt.Sprintf("Value %v is not one of the allowed values: %v", val, schema.Enum),
			)
		}
	}

	if schema.Minimum != nil && val < *schema.Minimum {
		diags.AddAttributeError(
			attrPath,
			"Value Too Small",
			fmt.Sprintf("Value %v is less than minimum %v", val, *schema.Minimum),
		)
	}

	if schema.Maximum != nil && val > *schema.Maximum {
		diags.AddAttributeError(
			attrPath,
			"Value Too Large",
			fmt.Sprintf("Value %v exceeds maximum %v", val, *schema.Maximum),
		)
	}

	return diags
}

// validateBool validates a boolean value against schema constraints
func (v *Validator) validateBool(val bool, schema *JSONSchema, attrPath path.Path) diag.Diagnostics {
	var diags diag.Diagnostics

	if !v.typeMatches(schema, "boolean") {
		diags.AddAttributeError(
			attrPath,
			"Type Mismatch",
			fmt.Sprintf("Expected %v, got boolean", schema.Type),
		)
	}

	return diags
}

// validateObject validates an object value against schema constraints
func (v *Validator) validateObject(ctx context.Context, val basetypes.ObjectValue, schema *JSONSchema, attrPath path.Path) diag.Diagnostics {
	var diags diag.Diagnostics

	if !v.typeMatches(schema, "object") {
		diags.AddAttributeError(
			attrPath,
			"Type Mismatch",
			fmt.Sprintf("Expected %v, got object", schema.Type),
		)
		return diags
	}

	attrs := val.Attributes()

	for _, reqField := range schema.Required {
		attrVal, exists := attrs[reqField]
		if !exists {
			diags.AddAttributeError(
				attrPath.AtName(reqField),
				"Missing Required Field",
				fmt.Sprintf("Required field %q is missing", reqField),
			)
		} else if attrVal.IsNull() {
			diags.AddAttributeError(
				attrPath.AtName(reqField),
				"Required Field Is Null",
				fmt.Sprintf("Required field %q cannot be null", reqField),
			)
		}
	}

	for name, attrVal := range attrs {
		if attrVal.IsUnknown() {
			continue
		}

		propSchema, hasProp := schema.Properties[name]
		if hasProp {
			diags.Append(v.validateValue(ctx, attrVal, propSchema, attrPath.AtName(name))...)
		}
	}

	return diags
}

// validateMap validates a map value against schema constraints
func (v *Validator) validateMap(ctx context.Context, val basetypes.MapValue, schema *JSONSchema, attrPath path.Path) diag.Diagnostics {
	var diags diag.Diagnostics

	if !v.typeMatches(schema, "object") {
		diags.AddAttributeError(
			attrPath,
			"Type Mismatch",
			fmt.Sprintf("Expected %v, got map/object", schema.Type),
		)
		return diags
	}

	elements := val.Elements()

	for key, elemVal := range elements {
		if elemVal.IsUnknown() {
			continue
		}

		propSchema, hasProp := schema.Properties[key]
		if hasProp {
			diags.Append(v.validateValue(ctx, elemVal, propSchema, attrPath.AtMapKey(key))...)
		}
	}

	return diags
}

// validateList validates a list value against schema constraints
func (v *Validator) validateList(ctx context.Context, val basetypes.ListValue, schema *JSONSchema, attrPath path.Path) diag.Diagnostics {
	var diags diag.Diagnostics

	if !v.typeMatches(schema, "array") {
		diags.AddAttributeError(
			attrPath,
			"Type Mismatch",
			fmt.Sprintf("Expected %v, got array", schema.Type),
		)
		return diags
	}

	elements := val.Elements()

	if schema.MinItems != nil && len(elements) < *schema.MinItems {
		diags.AddAttributeError(
			attrPath,
			"Array Too Short",
			fmt.Sprintf("Array length %d is less than minimum %d", len(elements), *schema.MinItems),
		)
	}

	if schema.MaxItems != nil && len(elements) > *schema.MaxItems {
		diags.AddAttributeError(
			attrPath,
			"Array Too Long",
			fmt.Sprintf("Array length %d exceeds maximum %d", len(elements), *schema.MaxItems),
		)
	}

	if schema.Items != nil {
		for i, elemVal := range elements {
			if elemVal.IsUnknown() {
				continue
			}
			diags.Append(v.validateValue(ctx, elemVal, schema.Items, attrPath.AtListIndex(i))...)
		}
	}

	return diags
}

// validateTuple validates a tuple value against schema constraints
func (v *Validator) validateTuple(ctx context.Context, val basetypes.TupleValue, schema *JSONSchema, attrPath path.Path) diag.Diagnostics {
	var diags diag.Diagnostics

	if !v.typeMatches(schema, "array") {
		diags.AddAttributeError(
			attrPath,
			"Type Mismatch",
			fmt.Sprintf("Expected %v, got array/tuple", schema.Type),
		)
		return diags
	}

	elements := val.Elements()

	if schema.MinItems != nil && len(elements) < *schema.MinItems {
		diags.AddAttributeError(
			attrPath,
			"Array Too Short",
			fmt.Sprintf("Array length %d is less than minimum %d", len(elements), *schema.MinItems),
		)
	}

	if schema.MaxItems != nil && len(elements) > *schema.MaxItems {
		diags.AddAttributeError(
			attrPath,
			"Array Too Long",
			fmt.Sprintf("Array length %d exceeds maximum %d", len(elements), *schema.MaxItems),
		)
	}

	if schema.Items != nil {
		for i, elemVal := range elements {
			if elemVal.IsUnknown() {
				continue
			}
			elemPath := attrPath.AtListIndex(i)
			diags.Append(v.validateValue(ctx, elemVal, schema.Items, elemPath)...)
		}
	}

	return diags
}

// validateSet validates a set value against schema constraints
func (v *Validator) validateSet(ctx context.Context, val basetypes.SetValue, schema *JSONSchema, attrPath path.Path) diag.Diagnostics {
	var diags diag.Diagnostics

	if !v.typeMatches(schema, "array") {
		diags.AddAttributeError(
			attrPath,
			"Type Mismatch",
			fmt.Sprintf("Expected %v, got array/set", schema.Type),
		)
		return diags
	}

	elements := val.Elements()

	if schema.MinItems != nil && len(elements) < *schema.MinItems {
		diags.AddAttributeError(
			attrPath,
			"Array Too Short",
			fmt.Sprintf("Array length %d is less than minimum %d", len(elements), *schema.MinItems),
		)
	}

	if schema.MaxItems != nil && len(elements) > *schema.MaxItems {
		diags.AddAttributeError(
			attrPath,
			"Array Too Long",
			fmt.Sprintf("Array length %d exceeds maximum %d", len(elements), *schema.MaxItems),
		)
	}

	if schema.Items != nil {
		for i, elemVal := range elements {
			if elemVal.IsUnknown() {
				continue
			}
			elemPath := attrPath.AtSetValue(elemVal)
			_ = i
			diags.Append(v.validateValue(ctx, elemVal, schema.Items, elemPath)...)
		}
	}

	return diags
}

// typeMatches checks if the schema type matches the expected type
func (v *Validator) typeMatches(schema *JSONSchema, expectedType string) bool {
	if schema.Type == nil {
		return true
	}

	switch t := schema.Type.(type) {
	case string:
		return t == expectedType
	case []interface{}:
		for _, typ := range t {
			if str, ok := typ.(string); ok && str == expectedType {
				return true
			}
		}
	}

	return false
}

// GetRequiredFields returns the list of required fields from the schema
func (v *Validator) GetRequiredFields() []string {
	if v.schema == nil {
		return nil
	}
	return v.schema.Required
}

// GetPropertySchema returns the schema for a specific property
func (v *Validator) GetPropertySchema(name string) *JSONSchema {
	if v.schema == nil || v.schema.Properties == nil {
		return nil
	}
	return v.schema.Properties[name]
}

// FormatPath formats a path for error messages
func FormatPath(p path.Path) string {
	return p.String()
}
