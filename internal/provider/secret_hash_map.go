package provider

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"sort"
	"strings"
)

// secretHashMap stores mappings of sha256(plaintext_secret_value) -> secret_coordinate_string.
// This allows us to detect whether a configuration difference is due to the API
// returning secret coordinates in place of the original plaintext values.
type secretHashMap map[string]string

// secretCoordinatePrefix is the prefix used by the Airbyte API for secret coordinate references.
const secretCoordinatePrefix = "airbyte_workspace_"

// isSecretCoordinate checks whether a string value looks like an Airbyte secret coordinate.
func isSecretCoordinate(val string) bool {
	return strings.HasPrefix(val, secretCoordinatePrefix) ||
		strings.HasPrefix(val, "airbyte_secret_")
}

// isRedactedSecret checks whether a string value is the API's redacted placeholder.
func isRedactedSecret(val string) bool {
	return val == "**********"
}

// hashValue returns the sha256 hex digest of the given string.
func hashValue(val string) string {
	h := sha256.Sum256([]byte(val))
	return hex.EncodeToString(h[:])
}

// buildSecretHashMap compares the user's plaintext configuration JSON with the
// API-returned configuration JSON (with secret coordinates enabled) and builds
// a mapping of sha256(plaintext_value) -> secret_coordinate for every leaf
// value that differs because the API returned a secret coordinate.
//
// plaintextJSON: the configuration JSON the user provided (contains real secrets)
// coordinateJSON: the configuration JSON from the API with includeSecretCoordinates=true
func buildSecretHashMap(plaintextJSON, coordinateJSON string) (secretHashMap, error) {
	var plaintextData interface{}
	var coordinateData interface{}

	if err := json.Unmarshal([]byte(plaintextJSON), &plaintextData); err != nil {
		return nil, fmt.Errorf("failed to parse plaintext config JSON: %w", err)
	}
	if err := json.Unmarshal([]byte(coordinateJSON), &coordinateData); err != nil {
		return nil, fmt.Errorf("failed to parse coordinate config JSON: %w", err)
	}

	result := make(secretHashMap)
	walkAndBuildMap(plaintextData, coordinateData, result)
	return result, nil
}

// walkAndBuildMap recursively walks two JSON trees in parallel and populates
// the hash map for any leaf values where the coordinate tree has a secret
// coordinate in place of the plaintext tree's value.
func walkAndBuildMap(plaintext, coordinate interface{}, result secretHashMap) {
	switch pt := plaintext.(type) {
	case map[string]interface{}:
		ct, ok := coordinate.(map[string]interface{})
		if !ok {
			return
		}
		for key, ptVal := range pt {
			if ctVal, exists := ct[key]; exists {
				walkAndBuildMap(ptVal, ctVal, result)
			}
		}
	case []interface{}:
		ct, ok := coordinate.([]interface{})
		if !ok {
			return
		}
		for i := 0; i < len(pt) && i < len(ct); i++ {
			walkAndBuildMap(pt[i], ct[i], result)
		}
	default:
		// Leaf value comparison
		ptStr := fmt.Sprintf("%v", plaintext)
		ctStr := fmt.Sprintf("%v", coordinate)
		if ptStr != ctStr && (isSecretCoordinate(ctStr) || isRedactedSecret(ctStr)) {
			result[hashValue(ptStr)] = ctStr
		}
	}
}

// configMatchesWithSecrets checks whether two configuration JSON strings are
// equivalent when accounting for secret coordinate substitutions.
//
// It returns true if every difference between planJSON and stateJSON can be
// explained by the hash map (i.e., the plan value hashes to a key that maps
// to the state's secret coordinate value), meaning there are no real changes.
//
// planJSON: the user's desired configuration (with plaintext secrets)
// stateJSON: the configuration from state (with secret coordinates)
// hashMap: the mapping of sha256(plaintext) -> secret_coordinate
func configMatchesWithSecrets(planJSON, stateJSON string, hashMap secretHashMap) (bool, error) {
	var planData interface{}
	var stateData interface{}

	if err := json.Unmarshal([]byte(planJSON), &planData); err != nil {
		return false, fmt.Errorf("failed to parse plan config JSON: %w", err)
	}
	if err := json.Unmarshal([]byte(stateJSON), &stateData); err != nil {
		return false, fmt.Errorf("failed to parse state config JSON: %w", err)
	}

	return walkAndCompare(planData, stateData, hashMap), nil
}

// walkAndCompare recursively walks two JSON trees and returns true if they are
// equivalent, treating hash-map-explained secret substitutions as matches.
func walkAndCompare(plan, state interface{}, hashMap secretHashMap) bool {
	switch pv := plan.(type) {
	case map[string]interface{}:
		sv, ok := state.(map[string]interface{})
		if !ok {
			return false
		}
		// Check that both maps have the same keys
		if len(pv) != len(sv) {
			return false
		}
		for key, planVal := range pv {
			stateVal, exists := sv[key]
			if !exists {
				return false
			}
			if !walkAndCompare(planVal, stateVal, hashMap) {
				return false
			}
		}
		return true
	case []interface{}:
		sv, ok := state.([]interface{})
		if !ok {
			return false
		}
		if len(pv) != len(sv) {
			return false
		}
		for i := range pv {
			if !walkAndCompare(pv[i], sv[i], hashMap) {
				return false
			}
		}
		return true
	default:
		planStr := fmt.Sprintf("%v", plan)
		stateStr := fmt.Sprintf("%v", state)

		// Direct match
		if planStr == stateStr {
			return true
		}

		// Check if the state value is a secret coordinate and the plan value's
		// hash maps to it
		if isSecretCoordinate(stateStr) || isRedactedSecret(stateStr) {
			planHash := hashValue(planStr)
			if mappedCoordinate, exists := hashMap[planHash]; exists {
				return mappedCoordinate == stateStr
			}
		}

		return false
	}
}

// marshalSecretHashMap serializes the hash map to JSON bytes for private state storage.
func marshalSecretHashMap(hashMap secretHashMap) ([]byte, error) {
	return json.Marshal(hashMap)
}

// unmarshalSecretHashMap deserializes the hash map from JSON bytes from private state.
func unmarshalSecretHashMap(data []byte) (secretHashMap, error) {
	if len(data) == 0 {
		return make(secretHashMap), nil
	}
	var result secretHashMap
	if err := json.Unmarshal(data, &result); err != nil {
		return nil, err
	}
	return result, nil
}

// marshalConfigurationJSON converts an API response configuration (interface{})
// into a JSON string.
func marshalConfigurationJSON(config interface{}) (string, error) {
	result, err := json.Marshal(config)
	if err != nil {
		return "", fmt.Errorf("failed to marshal configuration: %w", err)
	}
	return string(result), nil
}

// normalizeJSON normalizes a JSON string for consistent comparison by
// marshaling through Go's JSON encoder (which sorts map keys).
func normalizeJSON(jsonStr string) (string, error) {
	var data interface{}
	if err := json.Unmarshal([]byte(jsonStr), &data); err != nil {
		return "", err
	}
	normalized := normalizeValue(data)
	result, err := json.Marshal(normalized)
	if err != nil {
		return "", err
	}
	return string(result), nil
}

// normalizeValue recursively sorts map keys for deterministic JSON output.
func normalizeValue(v interface{}) interface{} {
	switch val := v.(type) {
	case map[string]interface{}:
		// Go's json.Marshal already sorts keys, but we normalize nested values
		result := make(map[string]interface{}, len(val))
		keys := make([]string, 0, len(val))
		for k := range val {
			keys = append(keys, k)
		}
		sort.Strings(keys)
		for _, k := range keys {
			result[k] = normalizeValue(val[k])
		}
		return result
	case []interface{}:
		result := make([]interface{}, len(val))
		for i, item := range val {
			result[i] = normalizeValue(item)
		}
		return result
	default:
		return v
	}
}
