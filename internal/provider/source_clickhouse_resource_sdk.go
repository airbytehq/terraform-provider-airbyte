// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceClickhouseResourceModel) ToSharedSourceClickhouseCreateRequest() *shared.SourceClickhouseCreateRequest {
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
	var database string
	database = r.Configuration.Database.ValueString()

	var username string
	username = r.Configuration.Username.ValueString()

	password := new(string)
	if !r.Configuration.Password.IsUnknown() && !r.Configuration.Password.IsNull() {
		*password = r.Configuration.Password.ValueString()
	} else {
		password = nil
	}
	jdbcURLParams := new(string)
	if !r.Configuration.JdbcURLParams.IsUnknown() && !r.Configuration.JdbcURLParams.IsNull() {
		*jdbcURLParams = r.Configuration.JdbcURLParams.ValueString()
	} else {
		jdbcURLParams = nil
	}
	ssl := new(bool)
	if !r.Configuration.Ssl.IsUnknown() && !r.Configuration.Ssl.IsNull() {
		*ssl = r.Configuration.Ssl.ValueBool()
	} else {
		ssl = nil
	}
	var tunnelMethod *shared.SSHTunnelMethod
	if r.Configuration.TunnelMethod != nil {
		var noTunnel *shared.NoTunnel
		if r.Configuration.TunnelMethod.NoTunnel != nil {
			noTunnel = &shared.NoTunnel{}
		}
		if noTunnel != nil {
			tunnelMethod = &shared.SSHTunnelMethod{
				NoTunnel: noTunnel,
			}
		}
		var sshKeyAuthentication *shared.SSHKeyAuthentication
		if r.Configuration.TunnelMethod.SSHKeyAuthentication != nil {
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

			sshKeyAuthentication = &shared.SSHKeyAuthentication{
				TunnelHost: tunnelHost,
				TunnelPort: tunnelPort,
				TunnelUser: tunnelUser,
				SSHKey:     sshKey,
			}
		}
		if sshKeyAuthentication != nil {
			tunnelMethod = &shared.SSHTunnelMethod{
				SSHKeyAuthentication: sshKeyAuthentication,
			}
		}
		var passwordAuthentication *shared.PasswordAuthentication
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

			passwordAuthentication = &shared.PasswordAuthentication{
				TunnelHost:         tunnelHost1,
				TunnelPort:         tunnelPort1,
				TunnelUser:         tunnelUser1,
				TunnelUserPassword: tunnelUserPassword,
			}
		}
		if passwordAuthentication != nil {
			tunnelMethod = &shared.SSHTunnelMethod{
				PasswordAuthentication: passwordAuthentication,
			}
		}
	}
	configuration := shared.SourceClickhouse{
		Host:          host,
		Port:          port,
		Database:      database,
		Username:      username,
		Password:      password,
		JdbcURLParams: jdbcURLParams,
		Ssl:           ssl,
		TunnelMethod:  tunnelMethod,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceClickhouseCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceClickhouseResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceClickhouseResourceModel) ToSharedSourceClickhousePutRequest() *shared.SourceClickhousePutRequest {
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
	var database string
	database = r.Configuration.Database.ValueString()

	var username string
	username = r.Configuration.Username.ValueString()

	password := new(string)
	if !r.Configuration.Password.IsUnknown() && !r.Configuration.Password.IsNull() {
		*password = r.Configuration.Password.ValueString()
	} else {
		password = nil
	}
	jdbcURLParams := new(string)
	if !r.Configuration.JdbcURLParams.IsUnknown() && !r.Configuration.JdbcURLParams.IsNull() {
		*jdbcURLParams = r.Configuration.JdbcURLParams.ValueString()
	} else {
		jdbcURLParams = nil
	}
	ssl := new(bool)
	if !r.Configuration.Ssl.IsUnknown() && !r.Configuration.Ssl.IsNull() {
		*ssl = r.Configuration.Ssl.ValueBool()
	} else {
		ssl = nil
	}
	var tunnelMethod *shared.SourceClickhouseUpdateSSHTunnelMethod
	if r.Configuration.TunnelMethod != nil {
		var sourceClickhouseUpdateNoTunnel *shared.SourceClickhouseUpdateNoTunnel
		if r.Configuration.TunnelMethod.NoTunnel != nil {
			sourceClickhouseUpdateNoTunnel = &shared.SourceClickhouseUpdateNoTunnel{}
		}
		if sourceClickhouseUpdateNoTunnel != nil {
			tunnelMethod = &shared.SourceClickhouseUpdateSSHTunnelMethod{
				SourceClickhouseUpdateNoTunnel: sourceClickhouseUpdateNoTunnel,
			}
		}
		var sourceClickhouseUpdateSSHKeyAuthentication *shared.SourceClickhouseUpdateSSHKeyAuthentication
		if r.Configuration.TunnelMethod.SSHKeyAuthentication != nil {
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

			sourceClickhouseUpdateSSHKeyAuthentication = &shared.SourceClickhouseUpdateSSHKeyAuthentication{
				TunnelHost: tunnelHost,
				TunnelPort: tunnelPort,
				TunnelUser: tunnelUser,
				SSHKey:     sshKey,
			}
		}
		if sourceClickhouseUpdateSSHKeyAuthentication != nil {
			tunnelMethod = &shared.SourceClickhouseUpdateSSHTunnelMethod{
				SourceClickhouseUpdateSSHKeyAuthentication: sourceClickhouseUpdateSSHKeyAuthentication,
			}
		}
		var sourceClickhouseUpdatePasswordAuthentication *shared.SourceClickhouseUpdatePasswordAuthentication
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

			sourceClickhouseUpdatePasswordAuthentication = &shared.SourceClickhouseUpdatePasswordAuthentication{
				TunnelHost:         tunnelHost1,
				TunnelPort:         tunnelPort1,
				TunnelUser:         tunnelUser1,
				TunnelUserPassword: tunnelUserPassword,
			}
		}
		if sourceClickhouseUpdatePasswordAuthentication != nil {
			tunnelMethod = &shared.SourceClickhouseUpdateSSHTunnelMethod{
				SourceClickhouseUpdatePasswordAuthentication: sourceClickhouseUpdatePasswordAuthentication,
			}
		}
	}
	configuration := shared.SourceClickhouseUpdate{
		Host:          host,
		Port:          port,
		Database:      database,
		Username:      username,
		Password:      password,
		JdbcURLParams: jdbcURLParams,
		Ssl:           ssl,
		TunnelMethod:  tunnelMethod,
	}
	out := shared.SourceClickhousePutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
