// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"encoding/json"
	tfTypes "github.com/airbytehq/terraform-provider-airbyte/internal/provider/types"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceSapHanaEnterpriseResourceModel) ToSharedSourceSapHanaEnterpriseCreateRequest() *shared.SourceSapHanaEnterpriseCreateRequest {
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

	var host string
	host = r.Configuration.Host.ValueString()

	port := new(int64)
	if !r.Configuration.Port.IsUnknown() && !r.Configuration.Port.IsNull() {
		*port = r.Configuration.Port.ValueInt64()
	} else {
		port = nil
	}
	var username string
	username = r.Configuration.Username.ValueString()

	password := new(string)
	if !r.Configuration.Password.IsUnknown() && !r.Configuration.Password.IsNull() {
		*password = r.Configuration.Password.ValueString()
	} else {
		password = nil
	}
	var schemas []string = []string{}
	for _, schemasItem := range r.Configuration.Schemas {
		schemas = append(schemas, schemasItem.ValueString())
	}
	jdbcURLParams := new(string)
	if !r.Configuration.JdbcURLParams.IsUnknown() && !r.Configuration.JdbcURLParams.IsNull() {
		*jdbcURLParams = r.Configuration.JdbcURLParams.ValueString()
	} else {
		jdbcURLParams = nil
	}
	var encryption shared.SourceSapHanaEnterpriseEncryption
	var sourceSapHanaEnterpriseUnencrypted *shared.SourceSapHanaEnterpriseUnencrypted
	if r.Configuration.Encryption.Unencrypted != nil {
		encryptionMethod := new(shared.SourceSapHanaEnterpriseEncryptionMethod)
		if !r.Configuration.Encryption.Unencrypted.EncryptionMethod.IsUnknown() && !r.Configuration.Encryption.Unencrypted.EncryptionMethod.IsNull() {
			*encryptionMethod = shared.SourceSapHanaEnterpriseEncryptionMethod(r.Configuration.Encryption.Unencrypted.EncryptionMethod.ValueString())
		} else {
			encryptionMethod = nil
		}
		var additionalProperties interface{}
		if !r.Configuration.Encryption.Unencrypted.AdditionalProperties.IsUnknown() && !r.Configuration.Encryption.Unencrypted.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.Encryption.Unencrypted.AdditionalProperties.ValueString()), &additionalProperties)
		}
		sourceSapHanaEnterpriseUnencrypted = &shared.SourceSapHanaEnterpriseUnencrypted{
			EncryptionMethod:     encryptionMethod,
			AdditionalProperties: additionalProperties,
		}
	}
	if sourceSapHanaEnterpriseUnencrypted != nil {
		encryption = shared.SourceSapHanaEnterpriseEncryption{
			SourceSapHanaEnterpriseUnencrypted: sourceSapHanaEnterpriseUnencrypted,
		}
	}
	var sourceSapHanaEnterpriseNativeNetworkEncryptionNNE *shared.SourceSapHanaEnterpriseNativeNetworkEncryptionNNE
	if r.Configuration.Encryption.NativeNetworkEncryptionNNE != nil {
		encryptionMethod1 := new(shared.SourceSapHanaEnterpriseSchemasEncryptionMethod)
		if !r.Configuration.Encryption.NativeNetworkEncryptionNNE.EncryptionMethod.IsUnknown() && !r.Configuration.Encryption.NativeNetworkEncryptionNNE.EncryptionMethod.IsNull() {
			*encryptionMethod1 = shared.SourceSapHanaEnterpriseSchemasEncryptionMethod(r.Configuration.Encryption.NativeNetworkEncryptionNNE.EncryptionMethod.ValueString())
		} else {
			encryptionMethod1 = nil
		}
		encryptionAlgorithm := new(shared.SourceSapHanaEnterpriseEncryptionAlgorithm)
		if !r.Configuration.Encryption.NativeNetworkEncryptionNNE.EncryptionAlgorithm.IsUnknown() && !r.Configuration.Encryption.NativeNetworkEncryptionNNE.EncryptionAlgorithm.IsNull() {
			*encryptionAlgorithm = shared.SourceSapHanaEnterpriseEncryptionAlgorithm(r.Configuration.Encryption.NativeNetworkEncryptionNNE.EncryptionAlgorithm.ValueString())
		} else {
			encryptionAlgorithm = nil
		}
		var additionalProperties1 interface{}
		if !r.Configuration.Encryption.NativeNetworkEncryptionNNE.AdditionalProperties.IsUnknown() && !r.Configuration.Encryption.NativeNetworkEncryptionNNE.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.Encryption.NativeNetworkEncryptionNNE.AdditionalProperties.ValueString()), &additionalProperties1)
		}
		sourceSapHanaEnterpriseNativeNetworkEncryptionNNE = &shared.SourceSapHanaEnterpriseNativeNetworkEncryptionNNE{
			EncryptionMethod:     encryptionMethod1,
			EncryptionAlgorithm:  encryptionAlgorithm,
			AdditionalProperties: additionalProperties1,
		}
	}
	if sourceSapHanaEnterpriseNativeNetworkEncryptionNNE != nil {
		encryption = shared.SourceSapHanaEnterpriseEncryption{
			SourceSapHanaEnterpriseNativeNetworkEncryptionNNE: sourceSapHanaEnterpriseNativeNetworkEncryptionNNE,
		}
	}
	var sourceSapHanaEnterpriseTLSEncryptedVerifyCertificate *shared.SourceSapHanaEnterpriseTLSEncryptedVerifyCertificate
	if r.Configuration.Encryption.TLSEncryptedVerifyCertificate != nil {
		encryptionMethod2 := new(shared.SourceSapHanaEnterpriseSchemasEncryptionEncryptionMethod)
		if !r.Configuration.Encryption.TLSEncryptedVerifyCertificate.EncryptionMethod.IsUnknown() && !r.Configuration.Encryption.TLSEncryptedVerifyCertificate.EncryptionMethod.IsNull() {
			*encryptionMethod2 = shared.SourceSapHanaEnterpriseSchemasEncryptionEncryptionMethod(r.Configuration.Encryption.TLSEncryptedVerifyCertificate.EncryptionMethod.ValueString())
		} else {
			encryptionMethod2 = nil
		}
		var sslCertificate string
		sslCertificate = r.Configuration.Encryption.TLSEncryptedVerifyCertificate.SslCertificate.ValueString()

		var additionalProperties2 interface{}
		if !r.Configuration.Encryption.TLSEncryptedVerifyCertificate.AdditionalProperties.IsUnknown() && !r.Configuration.Encryption.TLSEncryptedVerifyCertificate.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.Encryption.TLSEncryptedVerifyCertificate.AdditionalProperties.ValueString()), &additionalProperties2)
		}
		sourceSapHanaEnterpriseTLSEncryptedVerifyCertificate = &shared.SourceSapHanaEnterpriseTLSEncryptedVerifyCertificate{
			EncryptionMethod:     encryptionMethod2,
			SslCertificate:       sslCertificate,
			AdditionalProperties: additionalProperties2,
		}
	}
	if sourceSapHanaEnterpriseTLSEncryptedVerifyCertificate != nil {
		encryption = shared.SourceSapHanaEnterpriseEncryption{
			SourceSapHanaEnterpriseTLSEncryptedVerifyCertificate: sourceSapHanaEnterpriseTLSEncryptedVerifyCertificate,
		}
	}
	var tunnelMethod shared.SourceSapHanaEnterpriseSSHTunnelMethod
	var sourceSapHanaEnterpriseNoTunnel *shared.SourceSapHanaEnterpriseNoTunnel
	if r.Configuration.TunnelMethod.NoTunnel != nil {
		tunnelMethod1 := new(shared.SourceSapHanaEnterpriseTunnelMethod)
		if !r.Configuration.TunnelMethod.NoTunnel.TunnelMethod.IsUnknown() && !r.Configuration.TunnelMethod.NoTunnel.TunnelMethod.IsNull() {
			*tunnelMethod1 = shared.SourceSapHanaEnterpriseTunnelMethod(r.Configuration.TunnelMethod.NoTunnel.TunnelMethod.ValueString())
		} else {
			tunnelMethod1 = nil
		}
		var additionalProperties3 interface{}
		if !r.Configuration.TunnelMethod.NoTunnel.AdditionalProperties.IsUnknown() && !r.Configuration.TunnelMethod.NoTunnel.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.TunnelMethod.NoTunnel.AdditionalProperties.ValueString()), &additionalProperties3)
		}
		sourceSapHanaEnterpriseNoTunnel = &shared.SourceSapHanaEnterpriseNoTunnel{
			TunnelMethod:         tunnelMethod1,
			AdditionalProperties: additionalProperties3,
		}
	}
	if sourceSapHanaEnterpriseNoTunnel != nil {
		tunnelMethod = shared.SourceSapHanaEnterpriseSSHTunnelMethod{
			SourceSapHanaEnterpriseNoTunnel: sourceSapHanaEnterpriseNoTunnel,
		}
	}
	var sourceSapHanaEnterpriseSSHKeyAuthentication *shared.SourceSapHanaEnterpriseSSHKeyAuthentication
	if r.Configuration.TunnelMethod.SSHKeyAuthentication != nil {
		tunnelMethod2 := new(shared.SourceSapHanaEnterpriseSchemasTunnelMethod)
		if !r.Configuration.TunnelMethod.SSHKeyAuthentication.TunnelMethod.IsUnknown() && !r.Configuration.TunnelMethod.SSHKeyAuthentication.TunnelMethod.IsNull() {
			*tunnelMethod2 = shared.SourceSapHanaEnterpriseSchemasTunnelMethod(r.Configuration.TunnelMethod.SSHKeyAuthentication.TunnelMethod.ValueString())
		} else {
			tunnelMethod2 = nil
		}
		var tunnelHost string
		tunnelHost = r.Configuration.TunnelMethod.SSHKeyAuthentication.TunnelHost.ValueString()

		tunnelPort := new(int64)
		if !r.Configuration.TunnelMethod.SSHKeyAuthentication.TunnelPort.IsUnknown() && !r.Configuration.TunnelMethod.SSHKeyAuthentication.TunnelPort.IsNull() {
			*tunnelPort = r.Configuration.TunnelMethod.SSHKeyAuthentication.TunnelPort.ValueInt64()
		} else {
			tunnelPort = nil
		}
		var tunnelUser string
		tunnelUser = r.Configuration.TunnelMethod.SSHKeyAuthentication.TunnelUser.ValueString()

		var sshKey string
		sshKey = r.Configuration.TunnelMethod.SSHKeyAuthentication.SSHKey.ValueString()

		var additionalProperties4 interface{}
		if !r.Configuration.TunnelMethod.SSHKeyAuthentication.AdditionalProperties.IsUnknown() && !r.Configuration.TunnelMethod.SSHKeyAuthentication.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.TunnelMethod.SSHKeyAuthentication.AdditionalProperties.ValueString()), &additionalProperties4)
		}
		sourceSapHanaEnterpriseSSHKeyAuthentication = &shared.SourceSapHanaEnterpriseSSHKeyAuthentication{
			TunnelMethod:         tunnelMethod2,
			TunnelHost:           tunnelHost,
			TunnelPort:           tunnelPort,
			TunnelUser:           tunnelUser,
			SSHKey:               sshKey,
			AdditionalProperties: additionalProperties4,
		}
	}
	if sourceSapHanaEnterpriseSSHKeyAuthentication != nil {
		tunnelMethod = shared.SourceSapHanaEnterpriseSSHTunnelMethod{
			SourceSapHanaEnterpriseSSHKeyAuthentication: sourceSapHanaEnterpriseSSHKeyAuthentication,
		}
	}
	var sourceSapHanaEnterprisePasswordAuthentication *shared.SourceSapHanaEnterprisePasswordAuthentication
	if r.Configuration.TunnelMethod.PasswordAuthentication != nil {
		tunnelMethod3 := new(shared.SourceSapHanaEnterpriseSchemasTunnelMethodTunnelMethod)
		if !r.Configuration.TunnelMethod.PasswordAuthentication.TunnelMethod.IsUnknown() && !r.Configuration.TunnelMethod.PasswordAuthentication.TunnelMethod.IsNull() {
			*tunnelMethod3 = shared.SourceSapHanaEnterpriseSchemasTunnelMethodTunnelMethod(r.Configuration.TunnelMethod.PasswordAuthentication.TunnelMethod.ValueString())
		} else {
			tunnelMethod3 = nil
		}
		var tunnelHost1 string
		tunnelHost1 = r.Configuration.TunnelMethod.PasswordAuthentication.TunnelHost.ValueString()

		tunnelPort1 := new(int64)
		if !r.Configuration.TunnelMethod.PasswordAuthentication.TunnelPort.IsUnknown() && !r.Configuration.TunnelMethod.PasswordAuthentication.TunnelPort.IsNull() {
			*tunnelPort1 = r.Configuration.TunnelMethod.PasswordAuthentication.TunnelPort.ValueInt64()
		} else {
			tunnelPort1 = nil
		}
		var tunnelUser1 string
		tunnelUser1 = r.Configuration.TunnelMethod.PasswordAuthentication.TunnelUser.ValueString()

		var tunnelUserPassword string
		tunnelUserPassword = r.Configuration.TunnelMethod.PasswordAuthentication.TunnelUserPassword.ValueString()

		var additionalProperties5 interface{}
		if !r.Configuration.TunnelMethod.PasswordAuthentication.AdditionalProperties.IsUnknown() && !r.Configuration.TunnelMethod.PasswordAuthentication.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.TunnelMethod.PasswordAuthentication.AdditionalProperties.ValueString()), &additionalProperties5)
		}
		sourceSapHanaEnterprisePasswordAuthentication = &shared.SourceSapHanaEnterprisePasswordAuthentication{
			TunnelMethod:         tunnelMethod3,
			TunnelHost:           tunnelHost1,
			TunnelPort:           tunnelPort1,
			TunnelUser:           tunnelUser1,
			TunnelUserPassword:   tunnelUserPassword,
			AdditionalProperties: additionalProperties5,
		}
	}
	if sourceSapHanaEnterprisePasswordAuthentication != nil {
		tunnelMethod = shared.SourceSapHanaEnterpriseSSHTunnelMethod{
			SourceSapHanaEnterprisePasswordAuthentication: sourceSapHanaEnterprisePasswordAuthentication,
		}
	}
	var cursor shared.SourceSapHanaEnterpriseUpdateMethod
	var sourceSapHanaEnterpriseScanChangesWithUserDefinedCursor *shared.SourceSapHanaEnterpriseScanChangesWithUserDefinedCursor
	if r.Configuration.Cursor.ScanChangesWithUserDefinedCursor != nil {
		cursorMethod := new(shared.SourceSapHanaEnterpriseCursorMethod)
		if !r.Configuration.Cursor.ScanChangesWithUserDefinedCursor.CursorMethod.IsUnknown() && !r.Configuration.Cursor.ScanChangesWithUserDefinedCursor.CursorMethod.IsNull() {
			*cursorMethod = shared.SourceSapHanaEnterpriseCursorMethod(r.Configuration.Cursor.ScanChangesWithUserDefinedCursor.CursorMethod.ValueString())
		} else {
			cursorMethod = nil
		}
		var additionalProperties6 interface{}
		if !r.Configuration.Cursor.ScanChangesWithUserDefinedCursor.AdditionalProperties.IsUnknown() && !r.Configuration.Cursor.ScanChangesWithUserDefinedCursor.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.Cursor.ScanChangesWithUserDefinedCursor.AdditionalProperties.ValueString()), &additionalProperties6)
		}
		sourceSapHanaEnterpriseScanChangesWithUserDefinedCursor = &shared.SourceSapHanaEnterpriseScanChangesWithUserDefinedCursor{
			CursorMethod:         cursorMethod,
			AdditionalProperties: additionalProperties6,
		}
	}
	if sourceSapHanaEnterpriseScanChangesWithUserDefinedCursor != nil {
		cursor = shared.SourceSapHanaEnterpriseUpdateMethod{
			SourceSapHanaEnterpriseScanChangesWithUserDefinedCursor: sourceSapHanaEnterpriseScanChangesWithUserDefinedCursor,
		}
	}
	var sourceSapHanaEnterpriseReadChangesUsingChangeDataCaptureCDC *shared.SourceSapHanaEnterpriseReadChangesUsingChangeDataCaptureCDC
	if r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC != nil {
		cursorMethod1 := new(shared.SourceSapHanaEnterpriseSchemasCursorMethod)
		if !r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.CursorMethod.IsUnknown() && !r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.CursorMethod.IsNull() {
			*cursorMethod1 = shared.SourceSapHanaEnterpriseSchemasCursorMethod(r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.CursorMethod.ValueString())
		} else {
			cursorMethod1 = nil
		}
		invalidCdcCursorPositionBehavior := new(shared.SourceSapHanaEnterpriseInvalidCDCPositionBehaviorAdvanced)
		if !r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.InvalidCdcCursorPositionBehavior.IsUnknown() && !r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.InvalidCdcCursorPositionBehavior.IsNull() {
			*invalidCdcCursorPositionBehavior = shared.SourceSapHanaEnterpriseInvalidCDCPositionBehaviorAdvanced(r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.InvalidCdcCursorPositionBehavior.ValueString())
		} else {
			invalidCdcCursorPositionBehavior = nil
		}
		initialLoadTimeoutHours := new(int64)
		if !r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.InitialLoadTimeoutHours.IsUnknown() && !r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.InitialLoadTimeoutHours.IsNull() {
			*initialLoadTimeoutHours = r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.InitialLoadTimeoutHours.ValueInt64()
		} else {
			initialLoadTimeoutHours = nil
		}
		var additionalProperties7 interface{}
		if !r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.AdditionalProperties.IsUnknown() && !r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.AdditionalProperties.ValueString()), &additionalProperties7)
		}
		sourceSapHanaEnterpriseReadChangesUsingChangeDataCaptureCDC = &shared.SourceSapHanaEnterpriseReadChangesUsingChangeDataCaptureCDC{
			CursorMethod:                     cursorMethod1,
			InvalidCdcCursorPositionBehavior: invalidCdcCursorPositionBehavior,
			InitialLoadTimeoutHours:          initialLoadTimeoutHours,
			AdditionalProperties:             additionalProperties7,
		}
	}
	if sourceSapHanaEnterpriseReadChangesUsingChangeDataCaptureCDC != nil {
		cursor = shared.SourceSapHanaEnterpriseUpdateMethod{
			SourceSapHanaEnterpriseReadChangesUsingChangeDataCaptureCDC: sourceSapHanaEnterpriseReadChangesUsingChangeDataCaptureCDC,
		}
	}
	checkpointTargetIntervalSeconds := new(int64)
	if !r.Configuration.CheckpointTargetIntervalSeconds.IsUnknown() && !r.Configuration.CheckpointTargetIntervalSeconds.IsNull() {
		*checkpointTargetIntervalSeconds = r.Configuration.CheckpointTargetIntervalSeconds.ValueInt64()
	} else {
		checkpointTargetIntervalSeconds = nil
	}
	concurrency := new(int64)
	if !r.Configuration.Concurrency.IsUnknown() && !r.Configuration.Concurrency.IsNull() {
		*concurrency = r.Configuration.Concurrency.ValueInt64()
	} else {
		concurrency = nil
	}
	checkPrivileges := new(bool)
	if !r.Configuration.CheckPrivileges.IsUnknown() && !r.Configuration.CheckPrivileges.IsNull() {
		*checkPrivileges = r.Configuration.CheckPrivileges.ValueBool()
	} else {
		checkPrivileges = nil
	}
	configuration := shared.SourceSapHanaEnterprise{
		Host:                            host,
		Port:                            port,
		Username:                        username,
		Password:                        password,
		Schemas:                         schemas,
		JdbcURLParams:                   jdbcURLParams,
		Encryption:                      encryption,
		TunnelMethod:                    tunnelMethod,
		Cursor:                          cursor,
		CheckpointTargetIntervalSeconds: checkpointTargetIntervalSeconds,
		Concurrency:                     concurrency,
		CheckPrivileges:                 checkPrivileges,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceSapHanaEnterpriseCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceSapHanaEnterpriseResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
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

func (r *SourceSapHanaEnterpriseResourceModel) ToSharedSourceSapHanaEnterprisePutRequest() *shared.SourceSapHanaEnterprisePutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var host string
	host = r.Configuration.Host.ValueString()

	port := new(int64)
	if !r.Configuration.Port.IsUnknown() && !r.Configuration.Port.IsNull() {
		*port = r.Configuration.Port.ValueInt64()
	} else {
		port = nil
	}
	var username string
	username = r.Configuration.Username.ValueString()

	password := new(string)
	if !r.Configuration.Password.IsUnknown() && !r.Configuration.Password.IsNull() {
		*password = r.Configuration.Password.ValueString()
	} else {
		password = nil
	}
	var schemas []string = []string{}
	for _, schemasItem := range r.Configuration.Schemas {
		schemas = append(schemas, schemasItem.ValueString())
	}
	jdbcURLParams := new(string)
	if !r.Configuration.JdbcURLParams.IsUnknown() && !r.Configuration.JdbcURLParams.IsNull() {
		*jdbcURLParams = r.Configuration.JdbcURLParams.ValueString()
	} else {
		jdbcURLParams = nil
	}
	var encryption shared.SourceSapHanaEnterpriseUpdateEncryption
	var sourceSapHanaEnterpriseUpdateUnencrypted *shared.SourceSapHanaEnterpriseUpdateUnencrypted
	if r.Configuration.Encryption.Unencrypted != nil {
		encryptionMethod := new(shared.SourceSapHanaEnterpriseUpdateEncryptionMethod)
		if !r.Configuration.Encryption.Unencrypted.EncryptionMethod.IsUnknown() && !r.Configuration.Encryption.Unencrypted.EncryptionMethod.IsNull() {
			*encryptionMethod = shared.SourceSapHanaEnterpriseUpdateEncryptionMethod(r.Configuration.Encryption.Unencrypted.EncryptionMethod.ValueString())
		} else {
			encryptionMethod = nil
		}
		var additionalProperties interface{}
		if !r.Configuration.Encryption.Unencrypted.AdditionalProperties.IsUnknown() && !r.Configuration.Encryption.Unencrypted.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.Encryption.Unencrypted.AdditionalProperties.ValueString()), &additionalProperties)
		}
		sourceSapHanaEnterpriseUpdateUnencrypted = &shared.SourceSapHanaEnterpriseUpdateUnencrypted{
			EncryptionMethod:     encryptionMethod,
			AdditionalProperties: additionalProperties,
		}
	}
	if sourceSapHanaEnterpriseUpdateUnencrypted != nil {
		encryption = shared.SourceSapHanaEnterpriseUpdateEncryption{
			SourceSapHanaEnterpriseUpdateUnencrypted: sourceSapHanaEnterpriseUpdateUnencrypted,
		}
	}
	var sourceSapHanaEnterpriseUpdateNativeNetworkEncryptionNNE *shared.SourceSapHanaEnterpriseUpdateNativeNetworkEncryptionNNE
	if r.Configuration.Encryption.NativeNetworkEncryptionNNE != nil {
		encryptionMethod1 := new(shared.SourceSapHanaEnterpriseUpdateSchemasEncryptionMethod)
		if !r.Configuration.Encryption.NativeNetworkEncryptionNNE.EncryptionMethod.IsUnknown() && !r.Configuration.Encryption.NativeNetworkEncryptionNNE.EncryptionMethod.IsNull() {
			*encryptionMethod1 = shared.SourceSapHanaEnterpriseUpdateSchemasEncryptionMethod(r.Configuration.Encryption.NativeNetworkEncryptionNNE.EncryptionMethod.ValueString())
		} else {
			encryptionMethod1 = nil
		}
		encryptionAlgorithm := new(shared.SourceSapHanaEnterpriseUpdateEncryptionAlgorithm)
		if !r.Configuration.Encryption.NativeNetworkEncryptionNNE.EncryptionAlgorithm.IsUnknown() && !r.Configuration.Encryption.NativeNetworkEncryptionNNE.EncryptionAlgorithm.IsNull() {
			*encryptionAlgorithm = shared.SourceSapHanaEnterpriseUpdateEncryptionAlgorithm(r.Configuration.Encryption.NativeNetworkEncryptionNNE.EncryptionAlgorithm.ValueString())
		} else {
			encryptionAlgorithm = nil
		}
		var additionalProperties1 interface{}
		if !r.Configuration.Encryption.NativeNetworkEncryptionNNE.AdditionalProperties.IsUnknown() && !r.Configuration.Encryption.NativeNetworkEncryptionNNE.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.Encryption.NativeNetworkEncryptionNNE.AdditionalProperties.ValueString()), &additionalProperties1)
		}
		sourceSapHanaEnterpriseUpdateNativeNetworkEncryptionNNE = &shared.SourceSapHanaEnterpriseUpdateNativeNetworkEncryptionNNE{
			EncryptionMethod:     encryptionMethod1,
			EncryptionAlgorithm:  encryptionAlgorithm,
			AdditionalProperties: additionalProperties1,
		}
	}
	if sourceSapHanaEnterpriseUpdateNativeNetworkEncryptionNNE != nil {
		encryption = shared.SourceSapHanaEnterpriseUpdateEncryption{
			SourceSapHanaEnterpriseUpdateNativeNetworkEncryptionNNE: sourceSapHanaEnterpriseUpdateNativeNetworkEncryptionNNE,
		}
	}
	var sourceSapHanaEnterpriseUpdateTLSEncryptedVerifyCertificate *shared.SourceSapHanaEnterpriseUpdateTLSEncryptedVerifyCertificate
	if r.Configuration.Encryption.TLSEncryptedVerifyCertificate != nil {
		encryptionMethod2 := new(shared.SourceSapHanaEnterpriseUpdateSchemasEncryptionEncryptionMethod)
		if !r.Configuration.Encryption.TLSEncryptedVerifyCertificate.EncryptionMethod.IsUnknown() && !r.Configuration.Encryption.TLSEncryptedVerifyCertificate.EncryptionMethod.IsNull() {
			*encryptionMethod2 = shared.SourceSapHanaEnterpriseUpdateSchemasEncryptionEncryptionMethod(r.Configuration.Encryption.TLSEncryptedVerifyCertificate.EncryptionMethod.ValueString())
		} else {
			encryptionMethod2 = nil
		}
		var sslCertificate string
		sslCertificate = r.Configuration.Encryption.TLSEncryptedVerifyCertificate.SslCertificate.ValueString()

		var additionalProperties2 interface{}
		if !r.Configuration.Encryption.TLSEncryptedVerifyCertificate.AdditionalProperties.IsUnknown() && !r.Configuration.Encryption.TLSEncryptedVerifyCertificate.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.Encryption.TLSEncryptedVerifyCertificate.AdditionalProperties.ValueString()), &additionalProperties2)
		}
		sourceSapHanaEnterpriseUpdateTLSEncryptedVerifyCertificate = &shared.SourceSapHanaEnterpriseUpdateTLSEncryptedVerifyCertificate{
			EncryptionMethod:     encryptionMethod2,
			SslCertificate:       sslCertificate,
			AdditionalProperties: additionalProperties2,
		}
	}
	if sourceSapHanaEnterpriseUpdateTLSEncryptedVerifyCertificate != nil {
		encryption = shared.SourceSapHanaEnterpriseUpdateEncryption{
			SourceSapHanaEnterpriseUpdateTLSEncryptedVerifyCertificate: sourceSapHanaEnterpriseUpdateTLSEncryptedVerifyCertificate,
		}
	}
	var tunnelMethod shared.SourceSapHanaEnterpriseUpdateSSHTunnelMethod
	var sourceSapHanaEnterpriseUpdateNoTunnel *shared.SourceSapHanaEnterpriseUpdateNoTunnel
	if r.Configuration.TunnelMethod.NoTunnel != nil {
		tunnelMethod1 := new(shared.SourceSapHanaEnterpriseUpdateTunnelMethod)
		if !r.Configuration.TunnelMethod.NoTunnel.TunnelMethod.IsUnknown() && !r.Configuration.TunnelMethod.NoTunnel.TunnelMethod.IsNull() {
			*tunnelMethod1 = shared.SourceSapHanaEnterpriseUpdateTunnelMethod(r.Configuration.TunnelMethod.NoTunnel.TunnelMethod.ValueString())
		} else {
			tunnelMethod1 = nil
		}
		var additionalProperties3 interface{}
		if !r.Configuration.TunnelMethod.NoTunnel.AdditionalProperties.IsUnknown() && !r.Configuration.TunnelMethod.NoTunnel.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.TunnelMethod.NoTunnel.AdditionalProperties.ValueString()), &additionalProperties3)
		}
		sourceSapHanaEnterpriseUpdateNoTunnel = &shared.SourceSapHanaEnterpriseUpdateNoTunnel{
			TunnelMethod:         tunnelMethod1,
			AdditionalProperties: additionalProperties3,
		}
	}
	if sourceSapHanaEnterpriseUpdateNoTunnel != nil {
		tunnelMethod = shared.SourceSapHanaEnterpriseUpdateSSHTunnelMethod{
			SourceSapHanaEnterpriseUpdateNoTunnel: sourceSapHanaEnterpriseUpdateNoTunnel,
		}
	}
	var sourceSapHanaEnterpriseUpdateSSHKeyAuthentication *shared.SourceSapHanaEnterpriseUpdateSSHKeyAuthentication
	if r.Configuration.TunnelMethod.SSHKeyAuthentication != nil {
		tunnelMethod2 := new(shared.SourceSapHanaEnterpriseUpdateSchemasTunnelMethod)
		if !r.Configuration.TunnelMethod.SSHKeyAuthentication.TunnelMethod.IsUnknown() && !r.Configuration.TunnelMethod.SSHKeyAuthentication.TunnelMethod.IsNull() {
			*tunnelMethod2 = shared.SourceSapHanaEnterpriseUpdateSchemasTunnelMethod(r.Configuration.TunnelMethod.SSHKeyAuthentication.TunnelMethod.ValueString())
		} else {
			tunnelMethod2 = nil
		}
		var tunnelHost string
		tunnelHost = r.Configuration.TunnelMethod.SSHKeyAuthentication.TunnelHost.ValueString()

		tunnelPort := new(int64)
		if !r.Configuration.TunnelMethod.SSHKeyAuthentication.TunnelPort.IsUnknown() && !r.Configuration.TunnelMethod.SSHKeyAuthentication.TunnelPort.IsNull() {
			*tunnelPort = r.Configuration.TunnelMethod.SSHKeyAuthentication.TunnelPort.ValueInt64()
		} else {
			tunnelPort = nil
		}
		var tunnelUser string
		tunnelUser = r.Configuration.TunnelMethod.SSHKeyAuthentication.TunnelUser.ValueString()

		var sshKey string
		sshKey = r.Configuration.TunnelMethod.SSHKeyAuthentication.SSHKey.ValueString()

		var additionalProperties4 interface{}
		if !r.Configuration.TunnelMethod.SSHKeyAuthentication.AdditionalProperties.IsUnknown() && !r.Configuration.TunnelMethod.SSHKeyAuthentication.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.TunnelMethod.SSHKeyAuthentication.AdditionalProperties.ValueString()), &additionalProperties4)
		}
		sourceSapHanaEnterpriseUpdateSSHKeyAuthentication = &shared.SourceSapHanaEnterpriseUpdateSSHKeyAuthentication{
			TunnelMethod:         tunnelMethod2,
			TunnelHost:           tunnelHost,
			TunnelPort:           tunnelPort,
			TunnelUser:           tunnelUser,
			SSHKey:               sshKey,
			AdditionalProperties: additionalProperties4,
		}
	}
	if sourceSapHanaEnterpriseUpdateSSHKeyAuthentication != nil {
		tunnelMethod = shared.SourceSapHanaEnterpriseUpdateSSHTunnelMethod{
			SourceSapHanaEnterpriseUpdateSSHKeyAuthentication: sourceSapHanaEnterpriseUpdateSSHKeyAuthentication,
		}
	}
	var sourceSapHanaEnterpriseUpdatePasswordAuthentication *shared.SourceSapHanaEnterpriseUpdatePasswordAuthentication
	if r.Configuration.TunnelMethod.PasswordAuthentication != nil {
		tunnelMethod3 := new(shared.SourceSapHanaEnterpriseUpdateSchemasTunnelMethodTunnelMethod)
		if !r.Configuration.TunnelMethod.PasswordAuthentication.TunnelMethod.IsUnknown() && !r.Configuration.TunnelMethod.PasswordAuthentication.TunnelMethod.IsNull() {
			*tunnelMethod3 = shared.SourceSapHanaEnterpriseUpdateSchemasTunnelMethodTunnelMethod(r.Configuration.TunnelMethod.PasswordAuthentication.TunnelMethod.ValueString())
		} else {
			tunnelMethod3 = nil
		}
		var tunnelHost1 string
		tunnelHost1 = r.Configuration.TunnelMethod.PasswordAuthentication.TunnelHost.ValueString()

		tunnelPort1 := new(int64)
		if !r.Configuration.TunnelMethod.PasswordAuthentication.TunnelPort.IsUnknown() && !r.Configuration.TunnelMethod.PasswordAuthentication.TunnelPort.IsNull() {
			*tunnelPort1 = r.Configuration.TunnelMethod.PasswordAuthentication.TunnelPort.ValueInt64()
		} else {
			tunnelPort1 = nil
		}
		var tunnelUser1 string
		tunnelUser1 = r.Configuration.TunnelMethod.PasswordAuthentication.TunnelUser.ValueString()

		var tunnelUserPassword string
		tunnelUserPassword = r.Configuration.TunnelMethod.PasswordAuthentication.TunnelUserPassword.ValueString()

		var additionalProperties5 interface{}
		if !r.Configuration.TunnelMethod.PasswordAuthentication.AdditionalProperties.IsUnknown() && !r.Configuration.TunnelMethod.PasswordAuthentication.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.TunnelMethod.PasswordAuthentication.AdditionalProperties.ValueString()), &additionalProperties5)
		}
		sourceSapHanaEnterpriseUpdatePasswordAuthentication = &shared.SourceSapHanaEnterpriseUpdatePasswordAuthentication{
			TunnelMethod:         tunnelMethod3,
			TunnelHost:           tunnelHost1,
			TunnelPort:           tunnelPort1,
			TunnelUser:           tunnelUser1,
			TunnelUserPassword:   tunnelUserPassword,
			AdditionalProperties: additionalProperties5,
		}
	}
	if sourceSapHanaEnterpriseUpdatePasswordAuthentication != nil {
		tunnelMethod = shared.SourceSapHanaEnterpriseUpdateSSHTunnelMethod{
			SourceSapHanaEnterpriseUpdatePasswordAuthentication: sourceSapHanaEnterpriseUpdatePasswordAuthentication,
		}
	}
	var cursor shared.SourceSapHanaEnterpriseUpdateUpdateMethod
	var sourceSapHanaEnterpriseUpdateScanChangesWithUserDefinedCursor *shared.SourceSapHanaEnterpriseUpdateScanChangesWithUserDefinedCursor
	if r.Configuration.Cursor.ScanChangesWithUserDefinedCursor != nil {
		cursorMethod := new(shared.SourceSapHanaEnterpriseUpdateCursorMethod)
		if !r.Configuration.Cursor.ScanChangesWithUserDefinedCursor.CursorMethod.IsUnknown() && !r.Configuration.Cursor.ScanChangesWithUserDefinedCursor.CursorMethod.IsNull() {
			*cursorMethod = shared.SourceSapHanaEnterpriseUpdateCursorMethod(r.Configuration.Cursor.ScanChangesWithUserDefinedCursor.CursorMethod.ValueString())
		} else {
			cursorMethod = nil
		}
		var additionalProperties6 interface{}
		if !r.Configuration.Cursor.ScanChangesWithUserDefinedCursor.AdditionalProperties.IsUnknown() && !r.Configuration.Cursor.ScanChangesWithUserDefinedCursor.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.Cursor.ScanChangesWithUserDefinedCursor.AdditionalProperties.ValueString()), &additionalProperties6)
		}
		sourceSapHanaEnterpriseUpdateScanChangesWithUserDefinedCursor = &shared.SourceSapHanaEnterpriseUpdateScanChangesWithUserDefinedCursor{
			CursorMethod:         cursorMethod,
			AdditionalProperties: additionalProperties6,
		}
	}
	if sourceSapHanaEnterpriseUpdateScanChangesWithUserDefinedCursor != nil {
		cursor = shared.SourceSapHanaEnterpriseUpdateUpdateMethod{
			SourceSapHanaEnterpriseUpdateScanChangesWithUserDefinedCursor: sourceSapHanaEnterpriseUpdateScanChangesWithUserDefinedCursor,
		}
	}
	var sourceSapHanaEnterpriseUpdateReadChangesUsingChangeDataCaptureCDC *shared.SourceSapHanaEnterpriseUpdateReadChangesUsingChangeDataCaptureCDC
	if r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC != nil {
		cursorMethod1 := new(shared.SourceSapHanaEnterpriseUpdateSchemasCursorMethod)
		if !r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.CursorMethod.IsUnknown() && !r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.CursorMethod.IsNull() {
			*cursorMethod1 = shared.SourceSapHanaEnterpriseUpdateSchemasCursorMethod(r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.CursorMethod.ValueString())
		} else {
			cursorMethod1 = nil
		}
		invalidCdcCursorPositionBehavior := new(shared.SourceSapHanaEnterpriseUpdateInvalidCDCPositionBehaviorAdvanced)
		if !r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.InvalidCdcCursorPositionBehavior.IsUnknown() && !r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.InvalidCdcCursorPositionBehavior.IsNull() {
			*invalidCdcCursorPositionBehavior = shared.SourceSapHanaEnterpriseUpdateInvalidCDCPositionBehaviorAdvanced(r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.InvalidCdcCursorPositionBehavior.ValueString())
		} else {
			invalidCdcCursorPositionBehavior = nil
		}
		initialLoadTimeoutHours := new(int64)
		if !r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.InitialLoadTimeoutHours.IsUnknown() && !r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.InitialLoadTimeoutHours.IsNull() {
			*initialLoadTimeoutHours = r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.InitialLoadTimeoutHours.ValueInt64()
		} else {
			initialLoadTimeoutHours = nil
		}
		var additionalProperties7 interface{}
		if !r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.AdditionalProperties.IsUnknown() && !r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.Cursor.ReadChangesUsingChangeDataCaptureCDC.AdditionalProperties.ValueString()), &additionalProperties7)
		}
		sourceSapHanaEnterpriseUpdateReadChangesUsingChangeDataCaptureCDC = &shared.SourceSapHanaEnterpriseUpdateReadChangesUsingChangeDataCaptureCDC{
			CursorMethod:                     cursorMethod1,
			InvalidCdcCursorPositionBehavior: invalidCdcCursorPositionBehavior,
			InitialLoadTimeoutHours:          initialLoadTimeoutHours,
			AdditionalProperties:             additionalProperties7,
		}
	}
	if sourceSapHanaEnterpriseUpdateReadChangesUsingChangeDataCaptureCDC != nil {
		cursor = shared.SourceSapHanaEnterpriseUpdateUpdateMethod{
			SourceSapHanaEnterpriseUpdateReadChangesUsingChangeDataCaptureCDC: sourceSapHanaEnterpriseUpdateReadChangesUsingChangeDataCaptureCDC,
		}
	}
	checkpointTargetIntervalSeconds := new(int64)
	if !r.Configuration.CheckpointTargetIntervalSeconds.IsUnknown() && !r.Configuration.CheckpointTargetIntervalSeconds.IsNull() {
		*checkpointTargetIntervalSeconds = r.Configuration.CheckpointTargetIntervalSeconds.ValueInt64()
	} else {
		checkpointTargetIntervalSeconds = nil
	}
	concurrency := new(int64)
	if !r.Configuration.Concurrency.IsUnknown() && !r.Configuration.Concurrency.IsNull() {
		*concurrency = r.Configuration.Concurrency.ValueInt64()
	} else {
		concurrency = nil
	}
	checkPrivileges := new(bool)
	if !r.Configuration.CheckPrivileges.IsUnknown() && !r.Configuration.CheckPrivileges.IsNull() {
		*checkPrivileges = r.Configuration.CheckPrivileges.ValueBool()
	} else {
		checkPrivileges = nil
	}
	configuration := shared.SourceSapHanaEnterpriseUpdate{
		Host:                            host,
		Port:                            port,
		Username:                        username,
		Password:                        password,
		Schemas:                         schemas,
		JdbcURLParams:                   jdbcURLParams,
		Encryption:                      encryption,
		TunnelMethod:                    tunnelMethod,
		Cursor:                          cursor,
		CheckpointTargetIntervalSeconds: checkpointTargetIntervalSeconds,
		Concurrency:                     concurrency,
		CheckPrivileges:                 checkPrivileges,
	}
	out := shared.SourceSapHanaEnterprisePutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
