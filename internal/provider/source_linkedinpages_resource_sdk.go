// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	tfTypes "github.com/airbytehq/terraform-provider-airbyte/internal/provider/types"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"time"
)

func (r *SourceLinkedinPagesResourceModel) ToSharedSourceLinkedinPagesCreateRequest() *shared.SourceLinkedinPagesCreateRequest {
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

	var credentials *shared.SourceLinkedinPagesAuthentication
	if r.Configuration.Credentials != nil {
		var sourceLinkedinPagesOAuth20 *shared.SourceLinkedinPagesOAuth20
		if r.Configuration.Credentials.OAuth20 != nil {
			var clientID string
			clientID = r.Configuration.Credentials.OAuth20.ClientID.ValueString()

			var clientSecret string
			clientSecret = r.Configuration.Credentials.OAuth20.ClientSecret.ValueString()

			var refreshToken string
			refreshToken = r.Configuration.Credentials.OAuth20.RefreshToken.ValueString()

			sourceLinkedinPagesOAuth20 = &shared.SourceLinkedinPagesOAuth20{
				ClientID:     clientID,
				ClientSecret: clientSecret,
				RefreshToken: refreshToken,
			}
		}
		if sourceLinkedinPagesOAuth20 != nil {
			credentials = &shared.SourceLinkedinPagesAuthentication{
				SourceLinkedinPagesOAuth20: sourceLinkedinPagesOAuth20,
			}
		}
		var sourceLinkedinPagesAccessToken *shared.SourceLinkedinPagesAccessToken
		if r.Configuration.Credentials.AccessToken != nil {
			var accessToken string
			accessToken = r.Configuration.Credentials.AccessToken.AccessToken.ValueString()

			sourceLinkedinPagesAccessToken = &shared.SourceLinkedinPagesAccessToken{
				AccessToken: accessToken,
			}
		}
		if sourceLinkedinPagesAccessToken != nil {
			credentials = &shared.SourceLinkedinPagesAuthentication{
				SourceLinkedinPagesAccessToken: sourceLinkedinPagesAccessToken,
			}
		}
	}
	var orgID string
	orgID = r.Configuration.OrgID.ValueString()

	startDate := new(time.Time)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		*startDate, _ = time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	} else {
		startDate = nil
	}
	timeGranularityType := new(shared.TimeGranularityType)
	if !r.Configuration.TimeGranularityType.IsUnknown() && !r.Configuration.TimeGranularityType.IsNull() {
		*timeGranularityType = shared.TimeGranularityType(r.Configuration.TimeGranularityType.ValueString())
	} else {
		timeGranularityType = nil
	}
	configuration := shared.SourceLinkedinPages{
		Credentials:         credentials,
		OrgID:               orgID,
		StartDate:           startDate,
		TimeGranularityType: timeGranularityType,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceLinkedinPagesCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceLinkedinPagesResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		if resp.ResourceAllocation == nil {
			r.ResourceAllocation = nil
		} else {
			r.ResourceAllocation = &tfTypes.ScopedResourceRequirements{}
			if resp.ResourceAllocation.Default == nil {
				r.ResourceAllocation.Default = nil
			} else {
				r.ResourceAllocation.Default = &tfTypes.ResourceRequirements{}
				r.ResourceAllocation.Default.CPULimit = types.StringPointerValue(resp.ResourceAllocation.Default.CPULimit)
				r.ResourceAllocation.Default.CPURequest = types.StringPointerValue(resp.ResourceAllocation.Default.CPURequest)
				r.ResourceAllocation.Default.EphemeralStorageLimit = types.StringPointerValue(resp.ResourceAllocation.Default.EphemeralStorageLimit)
				r.ResourceAllocation.Default.EphemeralStorageRequest = types.StringPointerValue(resp.ResourceAllocation.Default.EphemeralStorageRequest)
				r.ResourceAllocation.Default.MemoryLimit = types.StringPointerValue(resp.ResourceAllocation.Default.MemoryLimit)
				r.ResourceAllocation.Default.MemoryRequest = types.StringPointerValue(resp.ResourceAllocation.Default.MemoryRequest)
			}
			r.ResourceAllocation.JobSpecific = []tfTypes.JobTypeResourceLimit{}
			if len(r.ResourceAllocation.JobSpecific) > len(resp.ResourceAllocation.JobSpecific) {
				r.ResourceAllocation.JobSpecific = r.ResourceAllocation.JobSpecific[:len(resp.ResourceAllocation.JobSpecific)]
			}
			for jobSpecificCount, jobSpecificItem := range resp.ResourceAllocation.JobSpecific {
				var jobSpecific1 tfTypes.JobTypeResourceLimit
				jobSpecific1.JobType = types.StringValue(string(jobSpecificItem.JobType))
				jobSpecific1.ResourceRequirements.CPULimit = types.StringPointerValue(jobSpecificItem.ResourceRequirements.CPULimit)
				jobSpecific1.ResourceRequirements.CPURequest = types.StringPointerValue(jobSpecificItem.ResourceRequirements.CPURequest)
				jobSpecific1.ResourceRequirements.EphemeralStorageLimit = types.StringPointerValue(jobSpecificItem.ResourceRequirements.EphemeralStorageLimit)
				jobSpecific1.ResourceRequirements.EphemeralStorageRequest = types.StringPointerValue(jobSpecificItem.ResourceRequirements.EphemeralStorageRequest)
				jobSpecific1.ResourceRequirements.MemoryLimit = types.StringPointerValue(jobSpecificItem.ResourceRequirements.MemoryLimit)
				jobSpecific1.ResourceRequirements.MemoryRequest = types.StringPointerValue(jobSpecificItem.ResourceRequirements.MemoryRequest)
				if jobSpecificCount+1 > len(r.ResourceAllocation.JobSpecific) {
					r.ResourceAllocation.JobSpecific = append(r.ResourceAllocation.JobSpecific, jobSpecific1)
				} else {
					r.ResourceAllocation.JobSpecific[jobSpecificCount].JobType = jobSpecific1.JobType
					r.ResourceAllocation.JobSpecific[jobSpecificCount].ResourceRequirements = jobSpecific1.ResourceRequirements
				}
			}
		}
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceLinkedinPagesResourceModel) ToSharedSourceLinkedinPagesPutRequest() *shared.SourceLinkedinPagesPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var credentials *shared.SourceLinkedinPagesUpdateAuthentication
	if r.Configuration.Credentials != nil {
		var sourceLinkedinPagesUpdateOAuth20 *shared.SourceLinkedinPagesUpdateOAuth20
		if r.Configuration.Credentials.OAuth20 != nil {
			var clientID string
			clientID = r.Configuration.Credentials.OAuth20.ClientID.ValueString()

			var clientSecret string
			clientSecret = r.Configuration.Credentials.OAuth20.ClientSecret.ValueString()

			var refreshToken string
			refreshToken = r.Configuration.Credentials.OAuth20.RefreshToken.ValueString()

			sourceLinkedinPagesUpdateOAuth20 = &shared.SourceLinkedinPagesUpdateOAuth20{
				ClientID:     clientID,
				ClientSecret: clientSecret,
				RefreshToken: refreshToken,
			}
		}
		if sourceLinkedinPagesUpdateOAuth20 != nil {
			credentials = &shared.SourceLinkedinPagesUpdateAuthentication{
				SourceLinkedinPagesUpdateOAuth20: sourceLinkedinPagesUpdateOAuth20,
			}
		}
		var sourceLinkedinPagesUpdateAccessToken *shared.SourceLinkedinPagesUpdateAccessToken
		if r.Configuration.Credentials.AccessToken != nil {
			var accessToken string
			accessToken = r.Configuration.Credentials.AccessToken.AccessToken.ValueString()

			sourceLinkedinPagesUpdateAccessToken = &shared.SourceLinkedinPagesUpdateAccessToken{
				AccessToken: accessToken,
			}
		}
		if sourceLinkedinPagesUpdateAccessToken != nil {
			credentials = &shared.SourceLinkedinPagesUpdateAuthentication{
				SourceLinkedinPagesUpdateAccessToken: sourceLinkedinPagesUpdateAccessToken,
			}
		}
	}
	var orgID string
	orgID = r.Configuration.OrgID.ValueString()

	startDate := new(time.Time)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		*startDate, _ = time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	} else {
		startDate = nil
	}
	timeGranularityType := new(shared.SourceLinkedinPagesUpdateTimeGranularityType)
	if !r.Configuration.TimeGranularityType.IsUnknown() && !r.Configuration.TimeGranularityType.IsNull() {
		*timeGranularityType = shared.SourceLinkedinPagesUpdateTimeGranularityType(r.Configuration.TimeGranularityType.ValueString())
	} else {
		timeGranularityType = nil
	}
	configuration := shared.SourceLinkedinPagesUpdate{
		Credentials:         credentials,
		OrgID:               orgID,
		StartDate:           startDate,
		TimeGranularityType: timeGranularityType,
	}
	out := shared.SourceLinkedinPagesPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
