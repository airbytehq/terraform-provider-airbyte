package stringplanmodifier

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"fmt"

	"github.com/airbytehq/terraform-provider-airbyte/internal/planmodifiers/utils"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
	"github.com/hashicorp/terraform-plugin-log/tflog"
)

const (
	// SecretHashMapKey is the private state key used to store the secret hash map.
	SecretHashMapKey = "secret_hash_map"
)

// SuppressSecretConfigDiff returns a plan modifier that suppresses spurious diffs
// on the configuration attribute when the only differences are due to the API
// returning secret coordinates in place of plaintext secret values.
//
// It reads a hash map from private state (stored by the resource's CRUD operations)
// that maps sha256(plaintext_secret) -> secret_coordinate. During plan modification,
// if the plan value differs from the state value, it checks whether all differences
// can be explained by the hash map. If so, it suppresses the diff by setting the
// plan value to the state value.
func SuppressSecretConfigDiff() planmodifier.String {
	return suppressSecretConfigDiff{}
}

type suppressSecretConfigDiff struct{}

func (m suppressSecretConfigDiff) Description(_ context.Context) string {
	return "Suppresses spurious diffs on configuration when differences are only due to secret redaction by the API."
}

func (m suppressSecretConfigDiff) MarkdownDescription(_ context.Context) string {
	return "Suppresses spurious diffs on configuration when differences are only due to secret redaction by the API."
}

func (m suppressSecretConfigDiff) PlanModifyString(ctx context.Context, req planmodifier.StringRequest, resp *planmodifier.StringResponse) {
	// Skip during resource creation (no prior state)
	if utils.IsAllStateUnknown(ctx, req.State) {
		return
	}

	// If plan or state is null/unknown, let normal handling take over
	if req.PlanValue.IsNull() || req.PlanValue.IsUnknown() {
		return
	}
	if req.StateValue.IsNull() || req.StateValue.IsUnknown() {
		return
	}

	planJSON := req.PlanValue.ValueString()
	stateJSON := req.StateValue.ValueString()

	// If they're already equal, no diff to suppress
	if planJSON == stateJSON {
		return
	}

	// Try to read the secret hash map from private state
	if req.Private == nil {
		return
	}

	hashMapData, diags := req.Private.GetKey(ctx, SecretHashMapKey)
	resp.Diagnostics.Append(diags...)
	if resp.Diagnostics.HasError() {
		return
	}

	if len(hashMapData) == 0 {
		// No hash map stored yet -- this can happen after import or first run.
		// Cannot suppress diff without the map.
		tflog.Debug(ctx, "No secret hash map found in private state; cannot suppress configuration diff")
		return
	}

	var hashMap map[string]string
	if err := json.Unmarshal(hashMapData, &hashMap); err != nil {
		tflog.Warn(ctx, "Failed to unmarshal secret hash map from private state", map[string]interface{}{
			"error": err.Error(),
		})
		return
	}

	// Check if all differences between plan and state can be explained by
	// the secret hash map
	matches, err := secretConfigMatches(planJSON, stateJSON, hashMap)
	if err != nil {
		tflog.Warn(ctx, "Failed to compare configurations with secret hash map", map[string]interface{}{
			"error": err.Error(),
		})
		return
	}

	if matches {
		tflog.Debug(ctx, "Suppressing configuration diff: all differences explained by secret hash map")
		resp.PlanValue = req.StateValue
	}
}

// secretConfigMatches checks whether two configuration JSON strings are
// equivalent when accounting for secret coordinate substitutions via the hash map.
func secretConfigMatches(planJSON, stateJSON string, hashMap map[string]string) (bool, error) {
	var planData interface{}
	var stateData interface{}

	if err := json.Unmarshal([]byte(planJSON), &planData); err != nil {
		return false, fmt.Errorf("failed to parse plan config JSON: %w", err)
	}
	if err := json.Unmarshal([]byte(stateJSON), &stateData); err != nil {
		return false, fmt.Errorf("failed to parse state config JSON: %w", err)
	}

	return secretTreeMatches(planData, stateData, hashMap), nil
}

// secretTreeMatches recursively walks two JSON trees and returns true if they are
// equivalent, treating hash-map-explained secret substitutions as matches.
func secretTreeMatches(plan, state interface{}, hashMap map[string]string) bool {
	switch pv := plan.(type) {
	case map[string]interface{}:
		sv, ok := state.(map[string]interface{})
		if !ok {
			return false
		}
		if len(pv) != len(sv) {
			return false
		}
		for key, planVal := range pv {
			stateVal, exists := sv[key]
			if !exists {
				return false
			}
			if !secretTreeMatches(planVal, stateVal, hashMap) {
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
			if !secretTreeMatches(pv[i], sv[i], hashMap) {
				return false
			}
		}
		return true
	default:
		planStr := leafToString(plan)
		stateStr := leafToString(state)

		if planStr == stateStr {
			return true
		}

		// Check hash map: sha256(plan_value) -> state_value
		planHash := secretSha256Hex(planStr)
		if mappedCoord, exists := hashMap[planHash]; exists {
			return mappedCoord == stateStr
		}

		return false
	}
}

// leafToString converts a JSON leaf value to its string representation for hashing.
func leafToString(v interface{}) string {
	switch val := v.(type) {
	case string:
		return val
	case nil:
		return ""
	default:
		b, _ := json.Marshal(val)
		return string(b)
	}
}

// secretSha256Hex returns the SHA-256 hex digest of the given string.
func secretSha256Hex(s string) string {
	h := sha256.Sum256([]byte(s))
	return hex.EncodeToString(h[:])
}
