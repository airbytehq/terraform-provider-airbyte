package provider

import (
	"crypto/sha256"
	"encoding/json"
	"fmt"
	"math/big"

	"github.com/hashicorp/terraform-plugin-framework/attr"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

// mergeConfigAndSensitiveConfig merges the non-sensitive `config` and sensitive
// `sensitive_config` Dynamic attributes into a single Go value suitable for
// passing as the `Configuration any` field in SDK create/put requests.
//
// sensitive_config keys are deep-merged onto config keys (sensitive wins on
// conflict). Either attribute may be null/unknown, in which case it is skipped.
func mergeConfigAndSensitiveConfig(config, sensitiveConfig types.Dynamic) (any, error) {
	configJSON, err := dynamicToJSON(config)
	if err != nil {
		return nil, fmt.Errorf("failed to convert config to JSON: %w", err)
	}
	sensitiveJSON, err := dynamicToJSON(sensitiveConfig)
	if err != nil {
		return nil, fmt.Errorf("failed to convert sensitive_config to JSON: %w", err)
	}

	// If config is empty/null, start with an empty object.
	if configJSON == "" {
		configJSON = "{}"
	}

	merged, err := deepMergeJSON(configJSON, sensitiveJSON)
	if err != nil {
		return nil, fmt.Errorf("failed to merge config and sensitive_config: %w", err)
	}

	var result any
	if err := json.Unmarshal([]byte(merged), &result); err != nil {
		return nil, fmt.Errorf("failed to parse merged configuration: %w", err)
	}
	return result, nil
}

// computeSensitiveConfigHash computes a deterministic SHA-256 hash of the
// sensitive_config Dynamic attribute. Returns an empty string if the value is
// null or unknown.
func computeSensitiveConfigHash(sensitiveConfig types.Dynamic) (string, error) {
	if sensitiveConfig.IsNull() || sensitiveConfig.IsUnknown() {
		return "", nil
	}
	j, err := dynamicToJSON(sensitiveConfig)
	if err != nil {
		return "", fmt.Errorf("failed to convert sensitive_config for hashing: %w", err)
	}
	if j == "" || j == "{}" || j == "null" {
		return "", nil
	}

	// Normalize the JSON so that key ordering is deterministic.
	var obj any
	if err := json.Unmarshal([]byte(j), &obj); err != nil {
		return "", fmt.Errorf("failed to parse sensitive_config JSON for hashing: %w", err)
	}
	normalized, err := json.Marshal(obj)
	if err != nil {
		return "", fmt.Errorf("failed to re-marshal sensitive_config for hashing: %w", err)
	}

	h := sha256.Sum256(normalized)
	return fmt.Sprintf("%x", h), nil
}

// apiConfigToDynamic converts an API response Configuration (any) into a
// types.Dynamic value suitable for storing in Terraform state as `config`.
//
// The API returns configuration as a JSON object; this function converts it
// into a types.Dynamic wrapping a types.Object so that Terraform can store it.
func apiConfigToDynamic(apiConfig any) (types.Dynamic, error) {
	if apiConfig == nil {
		return types.DynamicNull(), nil
	}
	b, err := json.Marshal(apiConfig)
	if err != nil {
		return types.DynamicNull(), fmt.Errorf("failed to marshal API config: %w", err)
	}
	var raw map[string]any
	if err := json.Unmarshal(b, &raw); err != nil {
		return types.DynamicNull(), fmt.Errorf("API configuration is not a JSON object: %w", err)
	}
	obj, err := goMapToTerraformObject(raw)
	if err != nil {
		return types.DynamicNull(), err
	}
	return types.DynamicValue(obj), nil
}

// goMapToTerraformObject recursively converts a Go map[string]any into a
// types.Object for use as a Dynamic attribute's underlying value.
func goMapToTerraformObject(m map[string]any) (types.Object, error) {
	if m == nil {
		return types.ObjectNull(nil), nil
	}

	attrValues := make(map[string]attr.Value, len(m))
	attrTypesMap := make(map[string]attr.Type, len(m))

	for k, v := range m {
		av, err := goValueToAttrValue(v)
		if err != nil {
			return types.ObjectNull(nil), fmt.Errorf("key %q: %w", k, err)
		}
		attrValues[k] = av
		attrTypesMap[k] = av.Type(nil)
	}

	obj, diags := types.ObjectValue(attrTypesMap, attrValues)
	if diags.HasError() {
		return types.ObjectNull(nil), fmt.Errorf("failed to create object value: %s", diags.Errors())
	}
	return obj, nil
}

// goValueToAttrValue converts a Go value (from json.Unmarshal with any) into
// the corresponding Terraform attr.Value.
func goValueToAttrValue(v any) (attr.Value, error) {
	if v == nil {
		// Use a typed null for strings as a reasonable default for null values.
		return types.StringNull(), nil
	}
	switch val := v.(type) {
	case string:
		return types.StringValue(val), nil
	case bool:
		return types.BoolValue(val), nil
	case float64:
		// json.Unmarshal decodes all numbers as float64.
		return types.NumberValue(big.NewFloat(val)), nil
	case map[string]any:
		obj, err := goMapToTerraformObject(val)
		if err != nil {
			return nil, err
		}
		return obj, nil
	case []any:
		if len(val) == 0 {
			return types.TupleNull(nil), nil
		}
		elements := make([]attr.Value, len(val))
		elemTypes := make([]attr.Type, len(val))
		for i, elem := range val {
			av, err := goValueToAttrValue(elem)
			if err != nil {
				return nil, fmt.Errorf("index %d: %w", i, err)
			}
			elements[i] = av
			elemTypes[i] = av.Type(nil)
		}
		tuple, diags := types.TupleValue(elemTypes, elements)
		if diags.HasError() {
			return nil, fmt.Errorf("failed to create tuple: %s", diags.Errors())
		}
		return tuple, nil
	default:
		return nil, fmt.Errorf("unsupported Go type %T", v)
	}
}
