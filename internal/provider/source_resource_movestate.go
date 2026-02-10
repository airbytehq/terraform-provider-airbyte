package provider

import (
	"context"
	"encoding/json"
	"strings"

	tfTypes "github.com/airbytehq/terraform-provider-airbyte/internal/provider/types"
	"github.com/hashicorp/terraform-plugin-framework/resource"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

var _ resource.ResourceWithMoveState = &SourceResource{}

func (r *SourceResource) MoveState(ctx context.Context) []resource.StateMover {
	return []resource.StateMover{
		{
			StateMover: func(ctx context.Context, req resource.MoveStateRequest, resp *resource.MoveStateResponse) {
				if !strings.HasPrefix(req.SourceTypeName, "airbyte_source_") {
					return
				}
				if req.SourceTypeName == "airbyte_source" {
					return
				}
				if !strings.HasSuffix(req.SourceProviderAddress, "airbytehq/airbyte") {
					return
				}

				var rawState map[string]json.RawMessage
				if err := json.Unmarshal(req.SourceRawState.JSON, &rawState); err != nil {
					resp.Diagnostics.AddError(
						"Unable to Parse Source State",
						"An unexpected error occurred parsing the source resource state JSON: "+err.Error(),
					)
					return
				}

				sourceID := extractJSONString(rawState, "source_id")
				if sourceID == "" {
					resp.Diagnostics.AddError(
						"Missing Source ID in State",
						"The source resource state does not contain a valid source_id. Cannot migrate to airbyte_source.",
					)
					return
				}

				targetState := SourceResourceModel{
					SourceID:      types.StringValue(sourceID),
					Name:          extractJSONTypesString(rawState, "name"),
					WorkspaceID:   extractJSONTypesString(rawState, "workspace_id"),
					DefinitionID:  extractJSONTypesString(rawState, "definition_id"),
					SourceType:    extractJSONTypesString(rawState, "source_type"),
					SecretID:      extractJSONTypesString(rawState, "secret_id"),
					CreatedAt:     extractJSONInt64(rawState, "created_at"),
					Configuration: &tfTypes.SourceConfiguration{},
				}

				resp.Diagnostics.Append(resp.TargetState.Set(ctx, targetState)...)
			},
		},
	}
}
