package provider

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"fmt"
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

// marshalSecretHashMap serializes the hash map to JSON bytes for private state storage.
func marshalSecretHashMap(hashMap secretHashMap) ([]byte, error) {
	return json.Marshal(hashMap)
}
