// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *DestinationFireboltResourceModel) ToSharedDestinationFireboltCreateRequest() *shared.DestinationFireboltCreateRequest {
	account := r.Configuration.Account.ValueString()
	clientID := r.Configuration.ClientID.ValueString()
	clientSecret := r.Configuration.ClientSecret.ValueString()
	database := r.Configuration.Database.ValueString()
	engine := r.Configuration.Engine.ValueString()
	host := new(string)
	if !r.Configuration.Host.IsUnknown() && !r.Configuration.Host.IsNull() {
		*host = r.Configuration.Host.ValueString()
	} else {
		host = nil
	}
	var loadingMethod *shared.DestinationFireboltLoadingMethod
	if r.Configuration.LoadingMethod != nil {
		var destinationFireboltSQLInserts *shared.DestinationFireboltSQLInserts
		if r.Configuration.LoadingMethod.SQLInserts != nil {
			destinationFireboltSQLInserts = &shared.DestinationFireboltSQLInserts{}
		}
		if destinationFireboltSQLInserts != nil {
			loadingMethod = &shared.DestinationFireboltLoadingMethod{
				DestinationFireboltSQLInserts: destinationFireboltSQLInserts,
			}
		}
		var destinationFireboltExternalTableViaS3 *shared.DestinationFireboltExternalTableViaS3
		if r.Configuration.LoadingMethod.ExternalTableViaS3 != nil {
			awsKeyID := r.Configuration.LoadingMethod.ExternalTableViaS3.AwsKeyID.ValueString()
			awsKeySecret := r.Configuration.LoadingMethod.ExternalTableViaS3.AwsKeySecret.ValueString()
			s3Bucket := r.Configuration.LoadingMethod.ExternalTableViaS3.S3Bucket.ValueString()
			s3Region := r.Configuration.LoadingMethod.ExternalTableViaS3.S3Region.ValueString()
			destinationFireboltExternalTableViaS3 = &shared.DestinationFireboltExternalTableViaS3{
				AwsKeyID:     awsKeyID,
				AwsKeySecret: awsKeySecret,
				S3Bucket:     s3Bucket,
				S3Region:     s3Region,
			}
		}
		if destinationFireboltExternalTableViaS3 != nil {
			loadingMethod = &shared.DestinationFireboltLoadingMethod{
				DestinationFireboltExternalTableViaS3: destinationFireboltExternalTableViaS3,
			}
		}
	}
	configuration := shared.DestinationFirebolt{
		Account:       account,
		ClientID:      clientID,
		ClientSecret:  clientSecret,
		Database:      database,
		Engine:        engine,
		Host:          host,
		LoadingMethod: loadingMethod,
	}
	definitionID := new(string)
	if !r.DefinitionID.IsUnknown() && !r.DefinitionID.IsNull() {
		*definitionID = r.DefinitionID.ValueString()
	} else {
		definitionID = nil
	}
	name := r.Name.ValueString()
	workspaceID := r.WorkspaceID.ValueString()
	out := shared.DestinationFireboltCreateRequest{
		Configuration: configuration,
		DefinitionID:  definitionID,
		Name:          name,
		WorkspaceID:   workspaceID,
	}
	return &out
}

func (r *DestinationFireboltResourceModel) RefreshFromSharedDestinationResponse(resp *shared.DestinationResponse) {
	if resp != nil {
		r.DestinationID = types.StringValue(resp.DestinationID)
		r.DestinationType = types.StringValue(resp.DestinationType)
		r.Name = types.StringValue(resp.Name)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *DestinationFireboltResourceModel) ToSharedDestinationFireboltPutRequest() *shared.DestinationFireboltPutRequest {
	account := r.Configuration.Account.ValueString()
	clientID := r.Configuration.ClientID.ValueString()
	clientSecret := r.Configuration.ClientSecret.ValueString()
	database := r.Configuration.Database.ValueString()
	engine := r.Configuration.Engine.ValueString()
	host := new(string)
	if !r.Configuration.Host.IsUnknown() && !r.Configuration.Host.IsNull() {
		*host = r.Configuration.Host.ValueString()
	} else {
		host = nil
	}
	var loadingMethod *shared.DestinationFireboltUpdateLoadingMethod
	if r.Configuration.LoadingMethod != nil {
		var sqlInserts *shared.SQLInserts
		if r.Configuration.LoadingMethod.SQLInserts != nil {
			sqlInserts = &shared.SQLInserts{}
		}
		if sqlInserts != nil {
			loadingMethod = &shared.DestinationFireboltUpdateLoadingMethod{
				SQLInserts: sqlInserts,
			}
		}
		var externalTableViaS3 *shared.ExternalTableViaS3
		if r.Configuration.LoadingMethod.ExternalTableViaS3 != nil {
			awsKeyID := r.Configuration.LoadingMethod.ExternalTableViaS3.AwsKeyID.ValueString()
			awsKeySecret := r.Configuration.LoadingMethod.ExternalTableViaS3.AwsKeySecret.ValueString()
			s3Bucket := r.Configuration.LoadingMethod.ExternalTableViaS3.S3Bucket.ValueString()
			s3Region := r.Configuration.LoadingMethod.ExternalTableViaS3.S3Region.ValueString()
			externalTableViaS3 = &shared.ExternalTableViaS3{
				AwsKeyID:     awsKeyID,
				AwsKeySecret: awsKeySecret,
				S3Bucket:     s3Bucket,
				S3Region:     s3Region,
			}
		}
		if externalTableViaS3 != nil {
			loadingMethod = &shared.DestinationFireboltUpdateLoadingMethod{
				ExternalTableViaS3: externalTableViaS3,
			}
		}
	}
	configuration := shared.DestinationFireboltUpdate{
		Account:       account,
		ClientID:      clientID,
		ClientSecret:  clientSecret,
		Database:      database,
		Engine:        engine,
		Host:          host,
		LoadingMethod: loadingMethod,
	}
	name := r.Name.ValueString()
	workspaceID := r.WorkspaceID.ValueString()
	out := shared.DestinationFireboltPutRequest{
		Configuration: configuration,
		Name:          name,
		WorkspaceID:   workspaceID,
	}
	return &out
}
