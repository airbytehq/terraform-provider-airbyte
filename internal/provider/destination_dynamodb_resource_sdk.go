// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *DestinationDynamodbResourceModel) ToSharedDestinationDynamodbCreateRequest() *shared.DestinationDynamodbCreateRequest {
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

	dynamodbEndpoint := new(string)
	if !r.Configuration.DynamodbEndpoint.IsUnknown() && !r.Configuration.DynamodbEndpoint.IsNull() {
		*dynamodbEndpoint = r.Configuration.DynamodbEndpoint.ValueString()
	} else {
		dynamodbEndpoint = nil
	}
	var dynamodbTableNamePrefix string
	dynamodbTableNamePrefix = r.Configuration.DynamodbTableNamePrefix.ValueString()

	dynamodbRegion := new(shared.DestinationDynamodbDynamoDBRegion)
	if !r.Configuration.DynamodbRegion.IsUnknown() && !r.Configuration.DynamodbRegion.IsNull() {
		*dynamodbRegion = shared.DestinationDynamodbDynamoDBRegion(r.Configuration.DynamodbRegion.ValueString())
	} else {
		dynamodbRegion = nil
	}
	var accessKeyID string
	accessKeyID = r.Configuration.AccessKeyID.ValueString()

	var secretAccessKey string
	secretAccessKey = r.Configuration.SecretAccessKey.ValueString()

	configuration := shared.DestinationDynamodb{
		DynamodbEndpoint:        dynamodbEndpoint,
		DynamodbTableNamePrefix: dynamodbTableNamePrefix,
		DynamodbRegion:          dynamodbRegion,
		AccessKeyID:             accessKeyID,
		SecretAccessKey:         secretAccessKey,
	}
	out := shared.DestinationDynamodbCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}

func (r *DestinationDynamodbResourceModel) RefreshFromSharedDestinationResponse(resp *shared.DestinationResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.DestinationID = types.StringValue(resp.DestinationID)
		r.DestinationType = types.StringValue(resp.DestinationType)
		r.Name = types.StringValue(resp.Name)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *DestinationDynamodbResourceModel) ToSharedDestinationDynamodbPutRequest() *shared.DestinationDynamodbPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	dynamodbEndpoint := new(string)
	if !r.Configuration.DynamodbEndpoint.IsUnknown() && !r.Configuration.DynamodbEndpoint.IsNull() {
		*dynamodbEndpoint = r.Configuration.DynamodbEndpoint.ValueString()
	} else {
		dynamodbEndpoint = nil
	}
	var dynamodbTableNamePrefix string
	dynamodbTableNamePrefix = r.Configuration.DynamodbTableNamePrefix.ValueString()

	dynamodbRegion := new(shared.DestinationDynamodbUpdateDynamoDBRegion)
	if !r.Configuration.DynamodbRegion.IsUnknown() && !r.Configuration.DynamodbRegion.IsNull() {
		*dynamodbRegion = shared.DestinationDynamodbUpdateDynamoDBRegion(r.Configuration.DynamodbRegion.ValueString())
	} else {
		dynamodbRegion = nil
	}
	var accessKeyID string
	accessKeyID = r.Configuration.AccessKeyID.ValueString()

	var secretAccessKey string
	secretAccessKey = r.Configuration.SecretAccessKey.ValueString()

	configuration := shared.DestinationDynamodbUpdate{
		DynamodbEndpoint:        dynamodbEndpoint,
		DynamodbTableNamePrefix: dynamodbTableNamePrefix,
		DynamodbRegion:          dynamodbRegion,
		AccessKeyID:             accessKeyID,
		SecretAccessKey:         secretAccessKey,
	}
	out := shared.DestinationDynamodbPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
