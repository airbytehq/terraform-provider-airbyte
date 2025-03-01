// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	customTypes "github.com/airbytehq/terraform-provider-airbyte/internal/sdk/types"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"time"
)

func (r *SourceMentionResourceModel) ToSharedSourceMentionCreateRequest() *shared.SourceMentionCreateRequest {
	var name string
	name = r.Name.ValueString()

	definitionID := new(string)
	if !r.DefinitionID.IsUnknown() && !r.DefinitionID.IsNull() {
		*definitionID = r.DefinitionID.ValueString()
	} else {
		definitionID = nil
	}
	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var apiKey string
	apiKey = r.Configuration.APIKey.ValueString()

	statsInterval := new(shared.StatisticsInterval)
	if !r.Configuration.StatsInterval.IsUnknown() && !r.Configuration.StatsInterval.IsNull() {
		*statsInterval = shared.StatisticsInterval(r.Configuration.StatsInterval.ValueString())
	} else {
		statsInterval = nil
	}
	statsStartDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.StatsStartDate.ValueString())
	statsEndDate := new(customTypes.Date)
	if !r.Configuration.StatsEndDate.IsUnknown() && !r.Configuration.StatsEndDate.IsNull() {
		statsEndDate = customTypes.MustNewDateFromString(r.Configuration.StatsEndDate.ValueString())
	} else {
		statsEndDate = nil
	}
	configuration := shared.SourceMention{
		APIKey:         apiKey,
		StatsInterval:  statsInterval,
		StatsStartDate: statsStartDate,
		StatsEndDate:   statsEndDate,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceMentionCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceMentionResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceMentionResourceModel) ToSharedSourceMentionPutRequest() *shared.SourceMentionPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var apiKey string
	apiKey = r.Configuration.APIKey.ValueString()

	statsInterval := new(shared.SourceMentionUpdateStatisticsInterval)
	if !r.Configuration.StatsInterval.IsUnknown() && !r.Configuration.StatsInterval.IsNull() {
		*statsInterval = shared.SourceMentionUpdateStatisticsInterval(r.Configuration.StatsInterval.ValueString())
	} else {
		statsInterval = nil
	}
	statsStartDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.StatsStartDate.ValueString())
	statsEndDate := new(customTypes.Date)
	if !r.Configuration.StatsEndDate.IsUnknown() && !r.Configuration.StatsEndDate.IsNull() {
		statsEndDate = customTypes.MustNewDateFromString(r.Configuration.StatsEndDate.ValueString())
	} else {
		statsEndDate = nil
	}
	configuration := shared.SourceMentionUpdate{
		APIKey:         apiKey,
		StatsInterval:  statsInterval,
		StatsStartDate: statsStartDate,
		StatsEndDate:   statsEndDate,
	}
	out := shared.SourceMentionPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
