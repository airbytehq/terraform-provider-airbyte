package provider

import (
	"context"

	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/operations"
	"github.com/hashicorp/terraform-plugin-framework/diag"
	"github.com/hashicorp/terraform-plugin-log/tflog"
)

const secretHashMapPrivateKey = "secret_hash_map"

// getSourceWithSecretCoordinates calls GetSource with includeSecretCoordinates=true
// and returns the configuration JSON containing secret coordinates instead of "***".
func getSourceWithSecretCoordinates(ctx context.Context, r *SourceResource, sourceID string) (string, diag.Diagnostics) {
	var diags diag.Diagnostics

	includeSecrets := true
	req := operations.GetSourceRequest{
		SourceID:                 sourceID,
		IncludeSecretCoordinates: &includeSecrets,
	}

	res, err := r.client.Sources.GetSource(ctx, req)
	if err != nil {
		diags.AddError("failure to invoke API for secret coordinates", err.Error())
		return "", diags
	}
	if res == nil || res.StatusCode != 200 || res.SourceResponse == nil {
		diags.AddError("unexpected response from API when fetching secret coordinates", "failed to get source with secret coordinates")
		return "", diags
	}

	// Marshal the configuration to JSON
	configJSON, err := marshalConfigurationJSON(res.SourceResponse.Configuration)
	if err != nil {
		diags.AddError("failed to marshal secret coordinate configuration", err.Error())
		return "", diags
	}

	return configJSON, diags
}

// buildAndStoreSourceSecretHashMap builds the secret hash map by comparing
// the user's plaintext configuration with the API's secret-coordinate version,
// then stores it in the response's private state.
func buildAndStoreSourceSecretHashMap(
	ctx context.Context,
	r *SourceResource,
	sourceID string,
	plaintextConfigJSON string,
	privateState privateStateSetter,
) diag.Diagnostics {
	var diags diag.Diagnostics

	// Fetch the configuration with secret coordinates
	coordinateConfigJSON, coordDiags := getSourceWithSecretCoordinates(ctx, r, sourceID)
	diags.Append(coordDiags...)
	if diags.HasError() {
		return diags
	}

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
// Both CreateResponse.Private and ReadResponse.Private implement this.
type privateStateSetter interface {
	SetKey(ctx context.Context, key string, value []byte) diag.Diagnostics
	GetKey(ctx context.Context, key string) ([]byte, diag.Diagnostics)
}
