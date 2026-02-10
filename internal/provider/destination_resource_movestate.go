package provider

import (
	"context"
	"encoding/json"
	"strings"

	tfTypes "github.com/airbytehq/terraform-provider-airbyte/internal/provider/types"
	"github.com/hashicorp/terraform-plugin-framework/resource"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

var _ resource.ResourceWithMoveState = &DestinationResource{}

func (r *DestinationResource) MoveState(ctx context.Context) []resource.StateMover {
	return []resource.StateMover{
		{
			StateMover: func(ctx context.Context, req resource.MoveStateRequest, resp *resource.MoveStateResponse) {
				if !strings.HasPrefix(req.SourceTypeName, "airbyte_destination_") {
					return
				}
				if req.SourceTypeName == "airbyte_destination" {
					return
				}
				if !strings.HasSuffix(req.SourceProviderAddress, "airbytehq/airbyte") {
					return
				}

				var rawState map[string]json.RawMessage
				if err := json.Unmarshal(req.SourceRawState.JSON, &rawState); err != nil {
					resp.Diagnostics.AddError(
						"Unable to Parse Destination State",
						"An unexpected error occurred parsing the destination resource state JSON: "+err.Error(),
					)
					return
				}

				destinationID := extractJSONString(rawState, "destination_id")
				if destinationID == "" {
					resp.Diagnostics.AddError(
						"Missing Destination ID in State",
						"The destination resource state does not contain a valid destination_id. Cannot migrate to airbyte_destination.",
					)
					return
				}

				targetState := DestinationResourceModel{
					DestinationID:   types.StringValue(destinationID),
					Name:            types.StringValue(extractJSONString(rawState, "name")),
					WorkspaceID:     types.StringValue(extractJSONString(rawState, "workspace_id")),
					DefinitionID:    types.StringValue(extractJSONString(rawState, "definition_id")),
					DestinationType: types.StringValue(extractJSONString(rawState, "destination_type")),
					CreatedAt:       extractJSONInt64(rawState, "created_at"),
					Configuration:   &tfTypes.DestinationConfiguration{},
				}

				resp.Diagnostics.Append(resp.TargetState.Set(ctx, targetState)...)
			},
		},
	}
}
