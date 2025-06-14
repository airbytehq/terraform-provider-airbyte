// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"encoding/json"
	tfTypes "github.com/airbytehq/terraform-provider-airbyte/internal/provider/types"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *DestinationMssqlResourceModel) ToSharedDestinationMssqlCreateRequest() *shared.DestinationMssqlCreateRequest {
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

	var database string
	database = r.Configuration.Database.ValueString()

	var host string
	host = r.Configuration.Host.ValueString()

	jdbcURLParams := new(string)
	if !r.Configuration.JdbcURLParams.IsUnknown() && !r.Configuration.JdbcURLParams.IsNull() {
		*jdbcURLParams = r.Configuration.JdbcURLParams.ValueString()
	} else {
		jdbcURLParams = nil
	}
	var loadType shared.LoadType
	var insertLoad *shared.InsertLoad
	if r.Configuration.LoadType.InsertLoad != nil {
		loadType1 := new(shared.DestinationMssqlSchemasLoadType)
		if !r.Configuration.LoadType.InsertLoad.LoadType.IsUnknown() && !r.Configuration.LoadType.InsertLoad.LoadType.IsNull() {
			*loadType1 = shared.DestinationMssqlSchemasLoadType(r.Configuration.LoadType.InsertLoad.LoadType.ValueString())
		} else {
			loadType1 = nil
		}
		var additionalProperties interface{}
		if !r.Configuration.LoadType.InsertLoad.AdditionalProperties.IsUnknown() && !r.Configuration.LoadType.InsertLoad.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.LoadType.InsertLoad.AdditionalProperties.ValueString()), &additionalProperties)
		}
		insertLoad = &shared.InsertLoad{
			LoadType:             loadType1,
			AdditionalProperties: additionalProperties,
		}
	}
	if insertLoad != nil {
		loadType = shared.LoadType{
			InsertLoad: insertLoad,
		}
	}
	var bulkLoad *shared.BulkLoad
	if r.Configuration.LoadType.BulkLoad != nil {
		azureBlobStorageAccountKey := new(string)
		if !r.Configuration.LoadType.BulkLoad.AzureBlobStorageAccountKey.IsUnknown() && !r.Configuration.LoadType.BulkLoad.AzureBlobStorageAccountKey.IsNull() {
			*azureBlobStorageAccountKey = r.Configuration.LoadType.BulkLoad.AzureBlobStorageAccountKey.ValueString()
		} else {
			azureBlobStorageAccountKey = nil
		}
		var azureBlobStorageAccountName string
		azureBlobStorageAccountName = r.Configuration.LoadType.BulkLoad.AzureBlobStorageAccountName.ValueString()

		var azureBlobStorageContainerName string
		azureBlobStorageContainerName = r.Configuration.LoadType.BulkLoad.AzureBlobStorageContainerName.ValueString()

		var bulkLoadDataSource string
		bulkLoadDataSource = r.Configuration.LoadType.BulkLoad.BulkLoadDataSource.ValueString()

		bulkLoadValidateValuesPreLoad := new(bool)
		if !r.Configuration.LoadType.BulkLoad.BulkLoadValidateValuesPreLoad.IsUnknown() && !r.Configuration.LoadType.BulkLoad.BulkLoadValidateValuesPreLoad.IsNull() {
			*bulkLoadValidateValuesPreLoad = r.Configuration.LoadType.BulkLoad.BulkLoadValidateValuesPreLoad.ValueBool()
		} else {
			bulkLoadValidateValuesPreLoad = nil
		}
		loadType2 := new(shared.DestinationMssqlLoadType)
		if !r.Configuration.LoadType.BulkLoad.LoadType.IsUnknown() && !r.Configuration.LoadType.BulkLoad.LoadType.IsNull() {
			*loadType2 = shared.DestinationMssqlLoadType(r.Configuration.LoadType.BulkLoad.LoadType.ValueString())
		} else {
			loadType2 = nil
		}
		sharedAccessSignature := new(string)
		if !r.Configuration.LoadType.BulkLoad.SharedAccessSignature.IsUnknown() && !r.Configuration.LoadType.BulkLoad.SharedAccessSignature.IsNull() {
			*sharedAccessSignature = r.Configuration.LoadType.BulkLoad.SharedAccessSignature.ValueString()
		} else {
			sharedAccessSignature = nil
		}
		var additionalProperties1 interface{}
		if !r.Configuration.LoadType.BulkLoad.AdditionalProperties.IsUnknown() && !r.Configuration.LoadType.BulkLoad.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.LoadType.BulkLoad.AdditionalProperties.ValueString()), &additionalProperties1)
		}
		bulkLoad = &shared.BulkLoad{
			AzureBlobStorageAccountKey:    azureBlobStorageAccountKey,
			AzureBlobStorageAccountName:   azureBlobStorageAccountName,
			AzureBlobStorageContainerName: azureBlobStorageContainerName,
			BulkLoadDataSource:            bulkLoadDataSource,
			BulkLoadValidateValuesPreLoad: bulkLoadValidateValuesPreLoad,
			LoadType:                      loadType2,
			SharedAccessSignature:         sharedAccessSignature,
			AdditionalProperties:          additionalProperties1,
		}
	}
	if bulkLoad != nil {
		loadType = shared.LoadType{
			BulkLoad: bulkLoad,
		}
	}
	password := new(string)
	if !r.Configuration.Password.IsUnknown() && !r.Configuration.Password.IsNull() {
		*password = r.Configuration.Password.ValueString()
	} else {
		password = nil
	}
	var port int64
	port = r.Configuration.Port.ValueInt64()

	schema := new(string)
	if !r.Configuration.Schema.IsUnknown() && !r.Configuration.Schema.IsNull() {
		*schema = r.Configuration.Schema.ValueString()
	} else {
		schema = nil
	}
	var sslMethod shared.DestinationMssqlSSLMethod
	var destinationMssqlUnencrypted *shared.DestinationMssqlUnencrypted
	if r.Configuration.SslMethod.Unencrypted != nil {
		name1 := new(shared.Name)
		if !r.Configuration.SslMethod.Unencrypted.Name.IsUnknown() && !r.Configuration.SslMethod.Unencrypted.Name.IsNull() {
			*name1 = shared.Name(r.Configuration.SslMethod.Unencrypted.Name.ValueString())
		} else {
			name1 = nil
		}
		var additionalProperties2 interface{}
		if !r.Configuration.SslMethod.Unencrypted.AdditionalProperties.IsUnknown() && !r.Configuration.SslMethod.Unencrypted.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.SslMethod.Unencrypted.AdditionalProperties.ValueString()), &additionalProperties2)
		}
		destinationMssqlUnencrypted = &shared.DestinationMssqlUnencrypted{
			Name:                 name1,
			AdditionalProperties: additionalProperties2,
		}
	}
	if destinationMssqlUnencrypted != nil {
		sslMethod = shared.DestinationMssqlSSLMethod{
			DestinationMssqlUnencrypted: destinationMssqlUnencrypted,
		}
	}
	var destinationMssqlEncryptedTrustServerCertificate *shared.DestinationMssqlEncryptedTrustServerCertificate
	if r.Configuration.SslMethod.EncryptedTrustServerCertificate != nil {
		name2 := new(shared.DestinationMssqlName)
		if !r.Configuration.SslMethod.EncryptedTrustServerCertificate.Name.IsUnknown() && !r.Configuration.SslMethod.EncryptedTrustServerCertificate.Name.IsNull() {
			*name2 = shared.DestinationMssqlName(r.Configuration.SslMethod.EncryptedTrustServerCertificate.Name.ValueString())
		} else {
			name2 = nil
		}
		var additionalProperties3 interface{}
		if !r.Configuration.SslMethod.EncryptedTrustServerCertificate.AdditionalProperties.IsUnknown() && !r.Configuration.SslMethod.EncryptedTrustServerCertificate.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.SslMethod.EncryptedTrustServerCertificate.AdditionalProperties.ValueString()), &additionalProperties3)
		}
		destinationMssqlEncryptedTrustServerCertificate = &shared.DestinationMssqlEncryptedTrustServerCertificate{
			Name:                 name2,
			AdditionalProperties: additionalProperties3,
		}
	}
	if destinationMssqlEncryptedTrustServerCertificate != nil {
		sslMethod = shared.DestinationMssqlSSLMethod{
			DestinationMssqlEncryptedTrustServerCertificate: destinationMssqlEncryptedTrustServerCertificate,
		}
	}
	var destinationMssqlEncryptedVerifyCertificate *shared.DestinationMssqlEncryptedVerifyCertificate
	if r.Configuration.SslMethod.EncryptedVerifyCertificate != nil {
		hostNameInCertificate := new(string)
		if !r.Configuration.SslMethod.EncryptedVerifyCertificate.HostNameInCertificate.IsUnknown() && !r.Configuration.SslMethod.EncryptedVerifyCertificate.HostNameInCertificate.IsNull() {
			*hostNameInCertificate = r.Configuration.SslMethod.EncryptedVerifyCertificate.HostNameInCertificate.ValueString()
		} else {
			hostNameInCertificate = nil
		}
		name3 := new(shared.DestinationMssqlSchemasName)
		if !r.Configuration.SslMethod.EncryptedVerifyCertificate.Name.IsUnknown() && !r.Configuration.SslMethod.EncryptedVerifyCertificate.Name.IsNull() {
			*name3 = shared.DestinationMssqlSchemasName(r.Configuration.SslMethod.EncryptedVerifyCertificate.Name.ValueString())
		} else {
			name3 = nil
		}
		trustStoreName := new(string)
		if !r.Configuration.SslMethod.EncryptedVerifyCertificate.TrustStoreName.IsUnknown() && !r.Configuration.SslMethod.EncryptedVerifyCertificate.TrustStoreName.IsNull() {
			*trustStoreName = r.Configuration.SslMethod.EncryptedVerifyCertificate.TrustStoreName.ValueString()
		} else {
			trustStoreName = nil
		}
		trustStorePassword := new(string)
		if !r.Configuration.SslMethod.EncryptedVerifyCertificate.TrustStorePassword.IsUnknown() && !r.Configuration.SslMethod.EncryptedVerifyCertificate.TrustStorePassword.IsNull() {
			*trustStorePassword = r.Configuration.SslMethod.EncryptedVerifyCertificate.TrustStorePassword.ValueString()
		} else {
			trustStorePassword = nil
		}
		var additionalProperties4 interface{}
		if !r.Configuration.SslMethod.EncryptedVerifyCertificate.AdditionalProperties.IsUnknown() && !r.Configuration.SslMethod.EncryptedVerifyCertificate.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.SslMethod.EncryptedVerifyCertificate.AdditionalProperties.ValueString()), &additionalProperties4)
		}
		destinationMssqlEncryptedVerifyCertificate = &shared.DestinationMssqlEncryptedVerifyCertificate{
			HostNameInCertificate: hostNameInCertificate,
			Name:                  name3,
			TrustStoreName:        trustStoreName,
			TrustStorePassword:    trustStorePassword,
			AdditionalProperties:  additionalProperties4,
		}
	}
	if destinationMssqlEncryptedVerifyCertificate != nil {
		sslMethod = shared.DestinationMssqlSSLMethod{
			DestinationMssqlEncryptedVerifyCertificate: destinationMssqlEncryptedVerifyCertificate,
		}
	}
	var user string
	user = r.Configuration.User.ValueString()

	configuration := shared.DestinationMssql{
		Database:      database,
		Host:          host,
		JdbcURLParams: jdbcURLParams,
		LoadType:      loadType,
		Password:      password,
		Port:          port,
		Schema:        schema,
		SslMethod:     sslMethod,
		User:          user,
	}
	out := shared.DestinationMssqlCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}

func (r *DestinationMssqlResourceModel) RefreshFromSharedDestinationResponse(resp *shared.DestinationResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.DestinationID = types.StringValue(resp.DestinationID)
		r.DestinationType = types.StringValue(resp.DestinationType)
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
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *DestinationMssqlResourceModel) ToSharedDestinationMssqlPutRequest() *shared.DestinationMssqlPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var database string
	database = r.Configuration.Database.ValueString()

	var host string
	host = r.Configuration.Host.ValueString()

	jdbcURLParams := new(string)
	if !r.Configuration.JdbcURLParams.IsUnknown() && !r.Configuration.JdbcURLParams.IsNull() {
		*jdbcURLParams = r.Configuration.JdbcURLParams.ValueString()
	} else {
		jdbcURLParams = nil
	}
	var loadType shared.DestinationMssqlUpdateLoadType
	var destinationMssqlUpdateInsertLoad *shared.DestinationMssqlUpdateInsertLoad
	if r.Configuration.LoadType.InsertLoad != nil {
		loadType1 := new(shared.DestinationMssqlUpdateSchemasLoadTypeLoadType)
		if !r.Configuration.LoadType.InsertLoad.LoadType.IsUnknown() && !r.Configuration.LoadType.InsertLoad.LoadType.IsNull() {
			*loadType1 = shared.DestinationMssqlUpdateSchemasLoadTypeLoadType(r.Configuration.LoadType.InsertLoad.LoadType.ValueString())
		} else {
			loadType1 = nil
		}
		var additionalProperties interface{}
		if !r.Configuration.LoadType.InsertLoad.AdditionalProperties.IsUnknown() && !r.Configuration.LoadType.InsertLoad.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.LoadType.InsertLoad.AdditionalProperties.ValueString()), &additionalProperties)
		}
		destinationMssqlUpdateInsertLoad = &shared.DestinationMssqlUpdateInsertLoad{
			LoadType:             loadType1,
			AdditionalProperties: additionalProperties,
		}
	}
	if destinationMssqlUpdateInsertLoad != nil {
		loadType = shared.DestinationMssqlUpdateLoadType{
			DestinationMssqlUpdateInsertLoad: destinationMssqlUpdateInsertLoad,
		}
	}
	var destinationMssqlUpdateBulkLoad *shared.DestinationMssqlUpdateBulkLoad
	if r.Configuration.LoadType.BulkLoad != nil {
		azureBlobStorageAccountKey := new(string)
		if !r.Configuration.LoadType.BulkLoad.AzureBlobStorageAccountKey.IsUnknown() && !r.Configuration.LoadType.BulkLoad.AzureBlobStorageAccountKey.IsNull() {
			*azureBlobStorageAccountKey = r.Configuration.LoadType.BulkLoad.AzureBlobStorageAccountKey.ValueString()
		} else {
			azureBlobStorageAccountKey = nil
		}
		var azureBlobStorageAccountName string
		azureBlobStorageAccountName = r.Configuration.LoadType.BulkLoad.AzureBlobStorageAccountName.ValueString()

		var azureBlobStorageContainerName string
		azureBlobStorageContainerName = r.Configuration.LoadType.BulkLoad.AzureBlobStorageContainerName.ValueString()

		var bulkLoadDataSource string
		bulkLoadDataSource = r.Configuration.LoadType.BulkLoad.BulkLoadDataSource.ValueString()

		bulkLoadValidateValuesPreLoad := new(bool)
		if !r.Configuration.LoadType.BulkLoad.BulkLoadValidateValuesPreLoad.IsUnknown() && !r.Configuration.LoadType.BulkLoad.BulkLoadValidateValuesPreLoad.IsNull() {
			*bulkLoadValidateValuesPreLoad = r.Configuration.LoadType.BulkLoad.BulkLoadValidateValuesPreLoad.ValueBool()
		} else {
			bulkLoadValidateValuesPreLoad = nil
		}
		loadType2 := new(shared.DestinationMssqlUpdateSchemasLoadType)
		if !r.Configuration.LoadType.BulkLoad.LoadType.IsUnknown() && !r.Configuration.LoadType.BulkLoad.LoadType.IsNull() {
			*loadType2 = shared.DestinationMssqlUpdateSchemasLoadType(r.Configuration.LoadType.BulkLoad.LoadType.ValueString())
		} else {
			loadType2 = nil
		}
		sharedAccessSignature := new(string)
		if !r.Configuration.LoadType.BulkLoad.SharedAccessSignature.IsUnknown() && !r.Configuration.LoadType.BulkLoad.SharedAccessSignature.IsNull() {
			*sharedAccessSignature = r.Configuration.LoadType.BulkLoad.SharedAccessSignature.ValueString()
		} else {
			sharedAccessSignature = nil
		}
		var additionalProperties1 interface{}
		if !r.Configuration.LoadType.BulkLoad.AdditionalProperties.IsUnknown() && !r.Configuration.LoadType.BulkLoad.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.LoadType.BulkLoad.AdditionalProperties.ValueString()), &additionalProperties1)
		}
		destinationMssqlUpdateBulkLoad = &shared.DestinationMssqlUpdateBulkLoad{
			AzureBlobStorageAccountKey:    azureBlobStorageAccountKey,
			AzureBlobStorageAccountName:   azureBlobStorageAccountName,
			AzureBlobStorageContainerName: azureBlobStorageContainerName,
			BulkLoadDataSource:            bulkLoadDataSource,
			BulkLoadValidateValuesPreLoad: bulkLoadValidateValuesPreLoad,
			LoadType:                      loadType2,
			SharedAccessSignature:         sharedAccessSignature,
			AdditionalProperties:          additionalProperties1,
		}
	}
	if destinationMssqlUpdateBulkLoad != nil {
		loadType = shared.DestinationMssqlUpdateLoadType{
			DestinationMssqlUpdateBulkLoad: destinationMssqlUpdateBulkLoad,
		}
	}
	password := new(string)
	if !r.Configuration.Password.IsUnknown() && !r.Configuration.Password.IsNull() {
		*password = r.Configuration.Password.ValueString()
	} else {
		password = nil
	}
	var port int64
	port = r.Configuration.Port.ValueInt64()

	schema := new(string)
	if !r.Configuration.Schema.IsUnknown() && !r.Configuration.Schema.IsNull() {
		*schema = r.Configuration.Schema.ValueString()
	} else {
		schema = nil
	}
	var sslMethod shared.DestinationMssqlUpdateSSLMethod
	var destinationMssqlUpdateUnencrypted *shared.DestinationMssqlUpdateUnencrypted
	if r.Configuration.SslMethod.Unencrypted != nil {
		name1 := new(shared.DestinationMssqlUpdateName)
		if !r.Configuration.SslMethod.Unencrypted.Name.IsUnknown() && !r.Configuration.SslMethod.Unencrypted.Name.IsNull() {
			*name1 = shared.DestinationMssqlUpdateName(r.Configuration.SslMethod.Unencrypted.Name.ValueString())
		} else {
			name1 = nil
		}
		var additionalProperties2 interface{}
		if !r.Configuration.SslMethod.Unencrypted.AdditionalProperties.IsUnknown() && !r.Configuration.SslMethod.Unencrypted.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.SslMethod.Unencrypted.AdditionalProperties.ValueString()), &additionalProperties2)
		}
		destinationMssqlUpdateUnencrypted = &shared.DestinationMssqlUpdateUnencrypted{
			Name:                 name1,
			AdditionalProperties: additionalProperties2,
		}
	}
	if destinationMssqlUpdateUnencrypted != nil {
		sslMethod = shared.DestinationMssqlUpdateSSLMethod{
			DestinationMssqlUpdateUnencrypted: destinationMssqlUpdateUnencrypted,
		}
	}
	var destinationMssqlUpdateEncryptedTrustServerCertificate *shared.DestinationMssqlUpdateEncryptedTrustServerCertificate
	if r.Configuration.SslMethod.EncryptedTrustServerCertificate != nil {
		name2 := new(shared.DestinationMssqlUpdateSchemasName)
		if !r.Configuration.SslMethod.EncryptedTrustServerCertificate.Name.IsUnknown() && !r.Configuration.SslMethod.EncryptedTrustServerCertificate.Name.IsNull() {
			*name2 = shared.DestinationMssqlUpdateSchemasName(r.Configuration.SslMethod.EncryptedTrustServerCertificate.Name.ValueString())
		} else {
			name2 = nil
		}
		var additionalProperties3 interface{}
		if !r.Configuration.SslMethod.EncryptedTrustServerCertificate.AdditionalProperties.IsUnknown() && !r.Configuration.SslMethod.EncryptedTrustServerCertificate.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.SslMethod.EncryptedTrustServerCertificate.AdditionalProperties.ValueString()), &additionalProperties3)
		}
		destinationMssqlUpdateEncryptedTrustServerCertificate = &shared.DestinationMssqlUpdateEncryptedTrustServerCertificate{
			Name:                 name2,
			AdditionalProperties: additionalProperties3,
		}
	}
	if destinationMssqlUpdateEncryptedTrustServerCertificate != nil {
		sslMethod = shared.DestinationMssqlUpdateSSLMethod{
			DestinationMssqlUpdateEncryptedTrustServerCertificate: destinationMssqlUpdateEncryptedTrustServerCertificate,
		}
	}
	var destinationMssqlUpdateEncryptedVerifyCertificate *shared.DestinationMssqlUpdateEncryptedVerifyCertificate
	if r.Configuration.SslMethod.EncryptedVerifyCertificate != nil {
		hostNameInCertificate := new(string)
		if !r.Configuration.SslMethod.EncryptedVerifyCertificate.HostNameInCertificate.IsUnknown() && !r.Configuration.SslMethod.EncryptedVerifyCertificate.HostNameInCertificate.IsNull() {
			*hostNameInCertificate = r.Configuration.SslMethod.EncryptedVerifyCertificate.HostNameInCertificate.ValueString()
		} else {
			hostNameInCertificate = nil
		}
		name3 := new(shared.DestinationMssqlUpdateSchemasSslMethodName)
		if !r.Configuration.SslMethod.EncryptedVerifyCertificate.Name.IsUnknown() && !r.Configuration.SslMethod.EncryptedVerifyCertificate.Name.IsNull() {
			*name3 = shared.DestinationMssqlUpdateSchemasSslMethodName(r.Configuration.SslMethod.EncryptedVerifyCertificate.Name.ValueString())
		} else {
			name3 = nil
		}
		trustStoreName := new(string)
		if !r.Configuration.SslMethod.EncryptedVerifyCertificate.TrustStoreName.IsUnknown() && !r.Configuration.SslMethod.EncryptedVerifyCertificate.TrustStoreName.IsNull() {
			*trustStoreName = r.Configuration.SslMethod.EncryptedVerifyCertificate.TrustStoreName.ValueString()
		} else {
			trustStoreName = nil
		}
		trustStorePassword := new(string)
		if !r.Configuration.SslMethod.EncryptedVerifyCertificate.TrustStorePassword.IsUnknown() && !r.Configuration.SslMethod.EncryptedVerifyCertificate.TrustStorePassword.IsNull() {
			*trustStorePassword = r.Configuration.SslMethod.EncryptedVerifyCertificate.TrustStorePassword.ValueString()
		} else {
			trustStorePassword = nil
		}
		var additionalProperties4 interface{}
		if !r.Configuration.SslMethod.EncryptedVerifyCertificate.AdditionalProperties.IsUnknown() && !r.Configuration.SslMethod.EncryptedVerifyCertificate.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.SslMethod.EncryptedVerifyCertificate.AdditionalProperties.ValueString()), &additionalProperties4)
		}
		destinationMssqlUpdateEncryptedVerifyCertificate = &shared.DestinationMssqlUpdateEncryptedVerifyCertificate{
			HostNameInCertificate: hostNameInCertificate,
			Name:                  name3,
			TrustStoreName:        trustStoreName,
			TrustStorePassword:    trustStorePassword,
			AdditionalProperties:  additionalProperties4,
		}
	}
	if destinationMssqlUpdateEncryptedVerifyCertificate != nil {
		sslMethod = shared.DestinationMssqlUpdateSSLMethod{
			DestinationMssqlUpdateEncryptedVerifyCertificate: destinationMssqlUpdateEncryptedVerifyCertificate,
		}
	}
	var user string
	user = r.Configuration.User.ValueString()

	configuration := shared.DestinationMssqlUpdate{
		Database:      database,
		Host:          host,
		JdbcURLParams: jdbcURLParams,
		LoadType:      loadType,
		Password:      password,
		Port:          port,
		Schema:        schema,
		SslMethod:     sslMethod,
		User:          user,
	}
	out := shared.DestinationMssqlPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
