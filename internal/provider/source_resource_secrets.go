package provider

import (
	"context"

	"github.com/hashicorp/terraform-plugin-framework/diag"
	"github.com/hashicorp/terraform-plugin-log/tflog"
)

const secretHashMapPrivateKey = "secret_hash_map"

// buildAndStoreSecretHashMap builds the secret hash map by comparing
// the user's plaintext configuration with the API's secret-coordinate version,
// then stores it in the response's private state.
//
// plaintextConfigJSON: the user's config JSON (with real secret values)
// coordinateConfigJSON: the API's config JSON (with secret coordinates from includeSecretCoordinates=true)
// privateState: the response's private state to store the hash map in
func buildAndStoreSecretHashMap(
	ctx context.Context,
	plaintextConfigJSON string,
	coordinateConfigJSON string,
	privateState privateStateSetter,
) diag.Diagnostics {
	var diags diag.Diagnostics

	// Build the hash map
	hashMap, err := buildSecretHashMap(plaintextConfigJSON, coordinateConfigJSON)
	if err != nil {
		tflog.Warn(ctx, "Failed to build secret hash map", map[string]interface{}{
			"error": err.Error(),
		})
		// Non-fatal: the provider will still work, just with spurious diffs
		return diags
	}

	if len(hashMap) == 0 {
		tflog.Debug(ctx, "No secrets detected in configuration; no hash map to store")
		return diags
	}

	// Serialize and store in private state
	hashMapBytes, err := marshalSecretHashMap(hashMap)
	if err != nil {
		tflog.Warn(ctx, "Failed to marshal secret hash map", map[string]interface{}{
			"error": err.Error(),
		})
		return diags
	}

	tflog.Debug(ctx, "Storing secret hash map in private state", map[string]interface{}{
		"num_secrets": len(hashMap),
	})
	diags.Append(privateState.SetKey(ctx, secretHashMapPrivateKey, hashMapBytes)...)

	return diags
}

// privateStateSetter is an interface for setting private state keys.
// Both CreateResponse.Private and UpdateResponse.Private implement this.
type privateStateSetter interface {
	SetKey(ctx context.Context, key string, value []byte) diag.Diagnostics
	GetKey(ctx context.Context, key string) ([]byte, diag.Diagnostics)
}
