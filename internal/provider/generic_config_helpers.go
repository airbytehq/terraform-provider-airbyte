package provider

import (
	"crypto/sha256"
	"encoding/json"
	"fmt"

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
