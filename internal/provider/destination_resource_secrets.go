package provider

import (
	"context"

	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/operations"
	"github.com/hashicorp/terraform-plugin-framework/diag"
	"github.com/hashicorp/terraform-plugin-log/tflog"
)

// getDestinationWithSecretCoordinates calls GetDestination with includeSecretCoordinates=true
// and returns the configuration JSON containing secret coordinates instead of "***".
func getDestinationWithSecretCoordinates(ctx context.Context, r *DestinationResource, destinationID string) (string, diag.Diagnostics) {
	var diags diag.Diagnostics

	includeSecrets := true
	req := operations.GetDestinationRequest{
		DestinationID:            destinationID,
		IncludeSecretCoordinates: &includeSecrets,
	}

	res, err := r.client.Destinations.GetDestination(ctx, req)
	if err != nil {
		diags.AddError("failure to invoke API for secret coordinates", err.Error())
		return "", diags
	}
	if res == nil || res.StatusCode != 200 || res.DestinationResponse == nil {
		diags.AddError("unexpected response from API when fetching secret coordinates", "failed to get destination with secret coordinates")
		return "", diags
	}

	configJSON, err := marshalConfigurationJSON(res.DestinationResponse.Configuration)
	if err != nil {
		diags.AddError("failed to marshal secret coordinate configuration", err.Error())
		return "", diags
	}

	return configJSON, diags
}

// buildAndStoreDestinationSecretHashMap builds the secret hash map by comparing
// the user's plaintext configuration with the API's secret-coordinate version,
// then stores it in the response's private state.
func buildAndStoreDestinationSecretHashMap(
	ctx context.Context,
	r *DestinationResource,
	destinationID string,
	plaintextConfigJSON string,
	privateState privateStateSetter,
) diag.Diagnostics {
	var diags diag.Diagnostics

	coordinateConfigJSON, coordDiags := getDestinationWithSecretCoordinates(ctx, r, destinationID)
	diags.Append(coordDiags...)
	if diags.HasError() {
		return diags
	}

	hashMap, err := buildSecretHashMap(plaintextConfigJSON, coordinateConfigJSON)
	if err != nil {
		tflog.Warn(ctx, "Failed to build secret hash map for destination", map[string]interface{}{
			"error": err.Error(),
		})
		return diags
	}

	if len(hashMap) == 0 {
		tflog.Debug(ctx, "No secrets detected in destination configuration; no hash map to store")
		return diags
	}

	hashMapBytes, err := marshalSecretHashMap(hashMap)
	if err != nil {
		tflog.Warn(ctx, "Failed to marshal secret hash map for destination", map[string]interface{}{
			"error": err.Error(),
		})
		return diags
	}

	tflog.Debug(ctx, "Storing destination secret hash map in private state", map[string]interface{}{
		"num_secrets": len(hashMap),
	})
	diags.Append(privateState.SetKey(ctx, secretHashMapPrivateKey, hashMapBytes)...)

	return diags
}
