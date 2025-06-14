// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	tfTypes "github.com/airbytehq/terraform-provider-airbyte/internal/provider/types"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceMssqlResourceModel) ToSharedSourceMssqlCreateRequest() *shared.SourceMssqlCreateRequest {
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
	var password string
	password = r.Configuration.Password.ValueString()

	var port int64
	port = r.Configuration.Port.ValueInt64()

	var replicationMethod *shared.UpdateMethod
	if r.Configuration.ReplicationMethod != nil {
		var readChangesUsingChangeDataCaptureCDC *shared.ReadChangesUsingChangeDataCaptureCDC
		if r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC != nil {
			initialLoadTimeoutHours := new(int64)
			if !r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.InitialLoadTimeoutHours.IsUnknown() && !r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.InitialLoadTimeoutHours.IsNull() {
				*initialLoadTimeoutHours = r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.InitialLoadTimeoutHours.ValueInt64()
			} else {
				initialLoadTimeoutHours = nil
			}
			initialWaitingSeconds := new(int64)
			if !r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.InitialWaitingSeconds.IsUnknown() && !r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.InitialWaitingSeconds.IsNull() {
				*initialWaitingSeconds = r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.InitialWaitingSeconds.ValueInt64()
			} else {
				initialWaitingSeconds = nil
			}
			invalidCdcCursorPositionBehavior := new(shared.SourceMssqlInvalidCDCPositionBehaviorAdvanced)
			if !r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.InvalidCdcCursorPositionBehavior.IsUnknown() && !r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.InvalidCdcCursorPositionBehavior.IsNull() {
				*invalidCdcCursorPositionBehavior = shared.SourceMssqlInvalidCDCPositionBehaviorAdvanced(r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.InvalidCdcCursorPositionBehavior.ValueString())
			} else {
				invalidCdcCursorPositionBehavior = nil
			}
			queueSize := new(int64)
			if !r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.QueueSize.IsUnknown() && !r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.QueueSize.IsNull() {
				*queueSize = r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.QueueSize.ValueInt64()
			} else {
				queueSize = nil
			}
			readChangesUsingChangeDataCaptureCDC = &shared.ReadChangesUsingChangeDataCaptureCDC{
				InitialLoadTimeoutHours:          initialLoadTimeoutHours,
				InitialWaitingSeconds:            initialWaitingSeconds,
				InvalidCdcCursorPositionBehavior: invalidCdcCursorPositionBehavior,
				QueueSize:                        queueSize,
			}
		}
		if readChangesUsingChangeDataCaptureCDC != nil {
			replicationMethod = &shared.UpdateMethod{
				ReadChangesUsingChangeDataCaptureCDC: readChangesUsingChangeDataCaptureCDC,
			}
		}
		var scanChangesWithUserDefinedCursor *shared.ScanChangesWithUserDefinedCursor
		if r.Configuration.ReplicationMethod.ScanChangesWithUserDefinedCursor != nil {
			scanChangesWithUserDefinedCursor = &shared.ScanChangesWithUserDefinedCursor{}
		}
		if scanChangesWithUserDefinedCursor != nil {
			replicationMethod = &shared.UpdateMethod{
				ScanChangesWithUserDefinedCursor: scanChangesWithUserDefinedCursor,
			}
		}
	}
	var schemas []string = []string{}
	for _, schemasItem := range r.Configuration.Schemas {
		schemas = append(schemas, schemasItem.ValueString())
	}
	var sslMethod *shared.SSLMethod
	if r.Configuration.SslMethod != nil {
		var unencrypted *shared.Unencrypted
		if r.Configuration.SslMethod.Unencrypted != nil {
			unencrypted = &shared.Unencrypted{}
		}
		if unencrypted != nil {
			sslMethod = &shared.SSLMethod{
				Unencrypted: unencrypted,
			}
		}
		var encryptedTrustServerCertificate *shared.EncryptedTrustServerCertificate
		if r.Configuration.SslMethod.EncryptedTrustServerCertificate != nil {
			encryptedTrustServerCertificate = &shared.EncryptedTrustServerCertificate{}
		}
		if encryptedTrustServerCertificate != nil {
			sslMethod = &shared.SSLMethod{
				EncryptedTrustServerCertificate: encryptedTrustServerCertificate,
			}
		}
		var encryptedVerifyCertificate *shared.EncryptedVerifyCertificate
		if r.Configuration.SslMethod.EncryptedVerifyCertificate != nil {
			certificate := new(string)
			if !r.Configuration.SslMethod.EncryptedVerifyCertificate.Certificate.IsUnknown() && !r.Configuration.SslMethod.EncryptedVerifyCertificate.Certificate.IsNull() {
				*certificate = r.Configuration.SslMethod.EncryptedVerifyCertificate.Certificate.ValueString()
			} else {
				certificate = nil
			}
			hostNameInCertificate := new(string)
			if !r.Configuration.SslMethod.EncryptedVerifyCertificate.HostNameInCertificate.IsUnknown() && !r.Configuration.SslMethod.EncryptedVerifyCertificate.HostNameInCertificate.IsNull() {
				*hostNameInCertificate = r.Configuration.SslMethod.EncryptedVerifyCertificate.HostNameInCertificate.ValueString()
			} else {
				hostNameInCertificate = nil
			}
			encryptedVerifyCertificate = &shared.EncryptedVerifyCertificate{
				Certificate:           certificate,
				HostNameInCertificate: hostNameInCertificate,
			}
		}
		if encryptedVerifyCertificate != nil {
			sslMethod = &shared.SSLMethod{
				EncryptedVerifyCertificate: encryptedVerifyCertificate,
			}
		}
	}
	var tunnelMethod *shared.SourceMssqlSSHTunnelMethod
	if r.Configuration.TunnelMethod != nil {
		var sourceMssqlNoTunnel *shared.SourceMssqlNoTunnel
		if r.Configuration.TunnelMethod.NoTunnel != nil {
			sourceMssqlNoTunnel = &shared.SourceMssqlNoTunnel{}
		}
		if sourceMssqlNoTunnel != nil {
			tunnelMethod = &shared.SourceMssqlSSHTunnelMethod{
				SourceMssqlNoTunnel: sourceMssqlNoTunnel,
			}
		}
		var sourceMssqlSSHKeyAuthentication *shared.SourceMssqlSSHKeyAuthentication
		if r.Configuration.TunnelMethod.SSHKeyAuthentication != nil {
			var sshKey string
			sshKey = r.Configuration.TunnelMethod.SSHKeyAuthentication.SSHKey.ValueString()

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

			sourceMssqlSSHKeyAuthentication = &shared.SourceMssqlSSHKeyAuthentication{
				SSHKey:     sshKey,
				TunnelHost: tunnelHost,
				TunnelPort: tunnelPort,
				TunnelUser: tunnelUser,
			}
		}
		if sourceMssqlSSHKeyAuthentication != nil {
			tunnelMethod = &shared.SourceMssqlSSHTunnelMethod{
				SourceMssqlSSHKeyAuthentication: sourceMssqlSSHKeyAuthentication,
			}
		}
		var sourceMssqlPasswordAuthentication *shared.SourceMssqlPasswordAuthentication
		if r.Configuration.TunnelMethod.PasswordAuthentication != nil {
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

			sourceMssqlPasswordAuthentication = &shared.SourceMssqlPasswordAuthentication{
				TunnelHost:         tunnelHost1,
				TunnelPort:         tunnelPort1,
				TunnelUser:         tunnelUser1,
				TunnelUserPassword: tunnelUserPassword,
			}
		}
		if sourceMssqlPasswordAuthentication != nil {
			tunnelMethod = &shared.SourceMssqlSSHTunnelMethod{
				SourceMssqlPasswordAuthentication: sourceMssqlPasswordAuthentication,
			}
		}
	}
	var username string
	username = r.Configuration.Username.ValueString()

	configuration := shared.SourceMssql{
		Database:          database,
		Host:              host,
		JdbcURLParams:     jdbcURLParams,
		Password:          password,
		Port:              port,
		ReplicationMethod: replicationMethod,
		Schemas:           schemas,
		SslMethod:         sslMethod,
		TunnelMethod:      tunnelMethod,
		Username:          username,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceMssqlCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceMssqlResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
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

func (r *SourceMssqlResourceModel) ToSharedSourceMssqlPutRequest() *shared.SourceMssqlPutRequest {
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
	var password string
	password = r.Configuration.Password.ValueString()

	var port int64
	port = r.Configuration.Port.ValueInt64()

	var replicationMethod *shared.SourceMssqlUpdateUpdateMethod
	if r.Configuration.ReplicationMethod != nil {
		var sourceMssqlUpdateReadChangesUsingChangeDataCaptureCDC *shared.SourceMssqlUpdateReadChangesUsingChangeDataCaptureCDC
		if r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC != nil {
			initialLoadTimeoutHours := new(int64)
			if !r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.InitialLoadTimeoutHours.IsUnknown() && !r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.InitialLoadTimeoutHours.IsNull() {
				*initialLoadTimeoutHours = r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.InitialLoadTimeoutHours.ValueInt64()
			} else {
				initialLoadTimeoutHours = nil
			}
			initialWaitingSeconds := new(int64)
			if !r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.InitialWaitingSeconds.IsUnknown() && !r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.InitialWaitingSeconds.IsNull() {
				*initialWaitingSeconds = r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.InitialWaitingSeconds.ValueInt64()
			} else {
				initialWaitingSeconds = nil
			}
			invalidCdcCursorPositionBehavior := new(shared.SourceMssqlUpdateInvalidCDCPositionBehaviorAdvanced)
			if !r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.InvalidCdcCursorPositionBehavior.IsUnknown() && !r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.InvalidCdcCursorPositionBehavior.IsNull() {
				*invalidCdcCursorPositionBehavior = shared.SourceMssqlUpdateInvalidCDCPositionBehaviorAdvanced(r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.InvalidCdcCursorPositionBehavior.ValueString())
			} else {
				invalidCdcCursorPositionBehavior = nil
			}
			queueSize := new(int64)
			if !r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.QueueSize.IsUnknown() && !r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.QueueSize.IsNull() {
				*queueSize = r.Configuration.ReplicationMethod.ReadChangesUsingChangeDataCaptureCDC.QueueSize.ValueInt64()
			} else {
				queueSize = nil
			}
			sourceMssqlUpdateReadChangesUsingChangeDataCaptureCDC = &shared.SourceMssqlUpdateReadChangesUsingChangeDataCaptureCDC{
				InitialLoadTimeoutHours:          initialLoadTimeoutHours,
				InitialWaitingSeconds:            initialWaitingSeconds,
				InvalidCdcCursorPositionBehavior: invalidCdcCursorPositionBehavior,
				QueueSize:                        queueSize,
			}
		}
		if sourceMssqlUpdateReadChangesUsingChangeDataCaptureCDC != nil {
			replicationMethod = &shared.SourceMssqlUpdateUpdateMethod{
				SourceMssqlUpdateReadChangesUsingChangeDataCaptureCDC: sourceMssqlUpdateReadChangesUsingChangeDataCaptureCDC,
			}
		}
		var sourceMssqlUpdateScanChangesWithUserDefinedCursor *shared.SourceMssqlUpdateScanChangesWithUserDefinedCursor
		if r.Configuration.ReplicationMethod.ScanChangesWithUserDefinedCursor != nil {
			sourceMssqlUpdateScanChangesWithUserDefinedCursor = &shared.SourceMssqlUpdateScanChangesWithUserDefinedCursor{}
		}
		if sourceMssqlUpdateScanChangesWithUserDefinedCursor != nil {
			replicationMethod = &shared.SourceMssqlUpdateUpdateMethod{
				SourceMssqlUpdateScanChangesWithUserDefinedCursor: sourceMssqlUpdateScanChangesWithUserDefinedCursor,
			}
		}
	}
	var schemas []string = []string{}
	for _, schemasItem := range r.Configuration.Schemas {
		schemas = append(schemas, schemasItem.ValueString())
	}
	var sslMethod *shared.SourceMssqlUpdateSSLMethod
	if r.Configuration.SslMethod != nil {
		var sourceMssqlUpdateUnencrypted *shared.SourceMssqlUpdateUnencrypted
		if r.Configuration.SslMethod.Unencrypted != nil {
			sourceMssqlUpdateUnencrypted = &shared.SourceMssqlUpdateUnencrypted{}
		}
		if sourceMssqlUpdateUnencrypted != nil {
			sslMethod = &shared.SourceMssqlUpdateSSLMethod{
				SourceMssqlUpdateUnencrypted: sourceMssqlUpdateUnencrypted,
			}
		}
		var sourceMssqlUpdateEncryptedTrustServerCertificate *shared.SourceMssqlUpdateEncryptedTrustServerCertificate
		if r.Configuration.SslMethod.EncryptedTrustServerCertificate != nil {
			sourceMssqlUpdateEncryptedTrustServerCertificate = &shared.SourceMssqlUpdateEncryptedTrustServerCertificate{}
		}
		if sourceMssqlUpdateEncryptedTrustServerCertificate != nil {
			sslMethod = &shared.SourceMssqlUpdateSSLMethod{
				SourceMssqlUpdateEncryptedTrustServerCertificate: sourceMssqlUpdateEncryptedTrustServerCertificate,
			}
		}
		var sourceMssqlUpdateEncryptedVerifyCertificate *shared.SourceMssqlUpdateEncryptedVerifyCertificate
		if r.Configuration.SslMethod.EncryptedVerifyCertificate != nil {
			certificate := new(string)
			if !r.Configuration.SslMethod.EncryptedVerifyCertificate.Certificate.IsUnknown() && !r.Configuration.SslMethod.EncryptedVerifyCertificate.Certificate.IsNull() {
				*certificate = r.Configuration.SslMethod.EncryptedVerifyCertificate.Certificate.ValueString()
			} else {
				certificate = nil
			}
			hostNameInCertificate := new(string)
			if !r.Configuration.SslMethod.EncryptedVerifyCertificate.HostNameInCertificate.IsUnknown() && !r.Configuration.SslMethod.EncryptedVerifyCertificate.HostNameInCertificate.IsNull() {
				*hostNameInCertificate = r.Configuration.SslMethod.EncryptedVerifyCertificate.HostNameInCertificate.ValueString()
			} else {
				hostNameInCertificate = nil
			}
			sourceMssqlUpdateEncryptedVerifyCertificate = &shared.SourceMssqlUpdateEncryptedVerifyCertificate{
				Certificate:           certificate,
				HostNameInCertificate: hostNameInCertificate,
			}
		}
		if sourceMssqlUpdateEncryptedVerifyCertificate != nil {
			sslMethod = &shared.SourceMssqlUpdateSSLMethod{
				SourceMssqlUpdateEncryptedVerifyCertificate: sourceMssqlUpdateEncryptedVerifyCertificate,
			}
		}
	}
	var tunnelMethod *shared.SourceMssqlUpdateSSHTunnelMethod
	if r.Configuration.TunnelMethod != nil {
		var sourceMssqlUpdateNoTunnel *shared.SourceMssqlUpdateNoTunnel
		if r.Configuration.TunnelMethod.NoTunnel != nil {
			sourceMssqlUpdateNoTunnel = &shared.SourceMssqlUpdateNoTunnel{}
		}
		if sourceMssqlUpdateNoTunnel != nil {
			tunnelMethod = &shared.SourceMssqlUpdateSSHTunnelMethod{
				SourceMssqlUpdateNoTunnel: sourceMssqlUpdateNoTunnel,
			}
		}
		var sourceMssqlUpdateSSHKeyAuthentication *shared.SourceMssqlUpdateSSHKeyAuthentication
		if r.Configuration.TunnelMethod.SSHKeyAuthentication != nil {
			var sshKey string
			sshKey = r.Configuration.TunnelMethod.SSHKeyAuthentication.SSHKey.ValueString()

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

			sourceMssqlUpdateSSHKeyAuthentication = &shared.SourceMssqlUpdateSSHKeyAuthentication{
				SSHKey:     sshKey,
				TunnelHost: tunnelHost,
				TunnelPort: tunnelPort,
				TunnelUser: tunnelUser,
			}
		}
		if sourceMssqlUpdateSSHKeyAuthentication != nil {
			tunnelMethod = &shared.SourceMssqlUpdateSSHTunnelMethod{
				SourceMssqlUpdateSSHKeyAuthentication: sourceMssqlUpdateSSHKeyAuthentication,
			}
		}
		var sourceMssqlUpdatePasswordAuthentication *shared.SourceMssqlUpdatePasswordAuthentication
		if r.Configuration.TunnelMethod.PasswordAuthentication != nil {
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

			sourceMssqlUpdatePasswordAuthentication = &shared.SourceMssqlUpdatePasswordAuthentication{
				TunnelHost:         tunnelHost1,
				TunnelPort:         tunnelPort1,
				TunnelUser:         tunnelUser1,
				TunnelUserPassword: tunnelUserPassword,
			}
		}
		if sourceMssqlUpdatePasswordAuthentication != nil {
			tunnelMethod = &shared.SourceMssqlUpdateSSHTunnelMethod{
				SourceMssqlUpdatePasswordAuthentication: sourceMssqlUpdatePasswordAuthentication,
			}
		}
	}
	var username string
	username = r.Configuration.Username.ValueString()

	configuration := shared.SourceMssqlUpdate{
		Database:          database,
		Host:              host,
		JdbcURLParams:     jdbcURLParams,
		Password:          password,
		Port:              port,
		ReplicationMethod: replicationMethod,
		Schemas:           schemas,
		SslMethod:         sslMethod,
		TunnelMethod:      tunnelMethod,
		Username:          username,
	}
	out := shared.SourceMssqlPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
