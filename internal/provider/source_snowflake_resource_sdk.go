// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceSnowflakeResourceModel) ToSharedSourceSnowflakeCreateRequest() *shared.SourceSnowflakeCreateRequest {
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

	var credentials *shared.SourceSnowflakeAuthorizationMethod
	if r.Configuration.Credentials != nil {
		var sourceSnowflakeOAuth20 *shared.SourceSnowflakeOAuth20
		if r.Configuration.Credentials.OAuth20 != nil {
			var clientID string
			clientID = r.Configuration.Credentials.OAuth20.ClientID.ValueString()

			var clientSecret string
			clientSecret = r.Configuration.Credentials.OAuth20.ClientSecret.ValueString()

			accessToken := new(string)
			if !r.Configuration.Credentials.OAuth20.AccessToken.IsUnknown() && !r.Configuration.Credentials.OAuth20.AccessToken.IsNull() {
				*accessToken = r.Configuration.Credentials.OAuth20.AccessToken.ValueString()
			} else {
				accessToken = nil
			}
			refreshToken := new(string)
			if !r.Configuration.Credentials.OAuth20.RefreshToken.IsUnknown() && !r.Configuration.Credentials.OAuth20.RefreshToken.IsNull() {
				*refreshToken = r.Configuration.Credentials.OAuth20.RefreshToken.ValueString()
			} else {
				refreshToken = nil
			}
			sourceSnowflakeOAuth20 = &shared.SourceSnowflakeOAuth20{
				ClientID:     clientID,
				ClientSecret: clientSecret,
				AccessToken:  accessToken,
				RefreshToken: refreshToken,
			}
		}
		if sourceSnowflakeOAuth20 != nil {
			credentials = &shared.SourceSnowflakeAuthorizationMethod{
				SourceSnowflakeOAuth20: sourceSnowflakeOAuth20,
			}
		}
		var keyPairAuthentication *shared.KeyPairAuthentication
		if r.Configuration.Credentials.KeyPairAuthentication != nil {
			var username string
			username = r.Configuration.Credentials.KeyPairAuthentication.Username.ValueString()

			var privateKey string
			privateKey = r.Configuration.Credentials.KeyPairAuthentication.PrivateKey.ValueString()

			privateKeyPassword := new(string)
			if !r.Configuration.Credentials.KeyPairAuthentication.PrivateKeyPassword.IsUnknown() && !r.Configuration.Credentials.KeyPairAuthentication.PrivateKeyPassword.IsNull() {
				*privateKeyPassword = r.Configuration.Credentials.KeyPairAuthentication.PrivateKeyPassword.ValueString()
			} else {
				privateKeyPassword = nil
			}
			keyPairAuthentication = &shared.KeyPairAuthentication{
				Username:           username,
				PrivateKey:         privateKey,
				PrivateKeyPassword: privateKeyPassword,
			}
		}
		if keyPairAuthentication != nil {
			credentials = &shared.SourceSnowflakeAuthorizationMethod{
				KeyPairAuthentication: keyPairAuthentication,
			}
		}
		var usernameAndPassword *shared.UsernameAndPassword
		if r.Configuration.Credentials.UsernameAndPassword != nil {
			var username1 string
			username1 = r.Configuration.Credentials.UsernameAndPassword.Username.ValueString()

			var password string
			password = r.Configuration.Credentials.UsernameAndPassword.Password.ValueString()

			usernameAndPassword = &shared.UsernameAndPassword{
				Username: username1,
				Password: password,
			}
		}
		if usernameAndPassword != nil {
			credentials = &shared.SourceSnowflakeAuthorizationMethod{
				UsernameAndPassword: usernameAndPassword,
			}
		}
	}
	var host string
	host = r.Configuration.Host.ValueString()

	var role string
	role = r.Configuration.Role.ValueString()

	var warehouse string
	warehouse = r.Configuration.Warehouse.ValueString()

	var database string
	database = r.Configuration.Database.ValueString()

	schema := new(string)
	if !r.Configuration.Schema.IsUnknown() && !r.Configuration.Schema.IsNull() {
		*schema = r.Configuration.Schema.ValueString()
	} else {
		schema = nil
	}
	jdbcURLParams := new(string)
	if !r.Configuration.JdbcURLParams.IsUnknown() && !r.Configuration.JdbcURLParams.IsNull() {
		*jdbcURLParams = r.Configuration.JdbcURLParams.ValueString()
	} else {
		jdbcURLParams = nil
	}
	configuration := shared.SourceSnowflake{
		Credentials:   credentials,
		Host:          host,
		Role:          role,
		Warehouse:     warehouse,
		Database:      database,
		Schema:        schema,
		JdbcURLParams: jdbcURLParams,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceSnowflakeCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceSnowflakeResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceSnowflakeResourceModel) ToSharedSourceSnowflakePutRequest() *shared.SourceSnowflakePutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var credentials *shared.SourceSnowflakeUpdateAuthorizationMethod
	if r.Configuration.Credentials != nil {
		var sourceSnowflakeUpdateOAuth20 *shared.SourceSnowflakeUpdateOAuth20
		if r.Configuration.Credentials.OAuth20 != nil {
			var clientID string
			clientID = r.Configuration.Credentials.OAuth20.ClientID.ValueString()

			var clientSecret string
			clientSecret = r.Configuration.Credentials.OAuth20.ClientSecret.ValueString()

			accessToken := new(string)
			if !r.Configuration.Credentials.OAuth20.AccessToken.IsUnknown() && !r.Configuration.Credentials.OAuth20.AccessToken.IsNull() {
				*accessToken = r.Configuration.Credentials.OAuth20.AccessToken.ValueString()
			} else {
				accessToken = nil
			}
			refreshToken := new(string)
			if !r.Configuration.Credentials.OAuth20.RefreshToken.IsUnknown() && !r.Configuration.Credentials.OAuth20.RefreshToken.IsNull() {
				*refreshToken = r.Configuration.Credentials.OAuth20.RefreshToken.ValueString()
			} else {
				refreshToken = nil
			}
			sourceSnowflakeUpdateOAuth20 = &shared.SourceSnowflakeUpdateOAuth20{
				ClientID:     clientID,
				ClientSecret: clientSecret,
				AccessToken:  accessToken,
				RefreshToken: refreshToken,
			}
		}
		if sourceSnowflakeUpdateOAuth20 != nil {
			credentials = &shared.SourceSnowflakeUpdateAuthorizationMethod{
				SourceSnowflakeUpdateOAuth20: sourceSnowflakeUpdateOAuth20,
			}
		}
		var sourceSnowflakeUpdateKeyPairAuthentication *shared.SourceSnowflakeUpdateKeyPairAuthentication
		if r.Configuration.Credentials.KeyPairAuthentication != nil {
			var username string
			username = r.Configuration.Credentials.KeyPairAuthentication.Username.ValueString()

			var privateKey string
			privateKey = r.Configuration.Credentials.KeyPairAuthentication.PrivateKey.ValueString()

			privateKeyPassword := new(string)
			if !r.Configuration.Credentials.KeyPairAuthentication.PrivateKeyPassword.IsUnknown() && !r.Configuration.Credentials.KeyPairAuthentication.PrivateKeyPassword.IsNull() {
				*privateKeyPassword = r.Configuration.Credentials.KeyPairAuthentication.PrivateKeyPassword.ValueString()
			} else {
				privateKeyPassword = nil
			}
			sourceSnowflakeUpdateKeyPairAuthentication = &shared.SourceSnowflakeUpdateKeyPairAuthentication{
				Username:           username,
				PrivateKey:         privateKey,
				PrivateKeyPassword: privateKeyPassword,
			}
		}
		if sourceSnowflakeUpdateKeyPairAuthentication != nil {
			credentials = &shared.SourceSnowflakeUpdateAuthorizationMethod{
				SourceSnowflakeUpdateKeyPairAuthentication: sourceSnowflakeUpdateKeyPairAuthentication,
			}
		}
		var sourceSnowflakeUpdateUsernameAndPassword *shared.SourceSnowflakeUpdateUsernameAndPassword
		if r.Configuration.Credentials.UsernameAndPassword != nil {
			var username1 string
			username1 = r.Configuration.Credentials.UsernameAndPassword.Username.ValueString()

			var password string
			password = r.Configuration.Credentials.UsernameAndPassword.Password.ValueString()

			sourceSnowflakeUpdateUsernameAndPassword = &shared.SourceSnowflakeUpdateUsernameAndPassword{
				Username: username1,
				Password: password,
			}
		}
		if sourceSnowflakeUpdateUsernameAndPassword != nil {
			credentials = &shared.SourceSnowflakeUpdateAuthorizationMethod{
				SourceSnowflakeUpdateUsernameAndPassword: sourceSnowflakeUpdateUsernameAndPassword,
			}
		}
	}
	var host string
	host = r.Configuration.Host.ValueString()

	var role string
	role = r.Configuration.Role.ValueString()

	var warehouse string
	warehouse = r.Configuration.Warehouse.ValueString()

	var database string
	database = r.Configuration.Database.ValueString()

	schema := new(string)
	if !r.Configuration.Schema.IsUnknown() && !r.Configuration.Schema.IsNull() {
		*schema = r.Configuration.Schema.ValueString()
	} else {
		schema = nil
	}
	jdbcURLParams := new(string)
	if !r.Configuration.JdbcURLParams.IsUnknown() && !r.Configuration.JdbcURLParams.IsNull() {
		*jdbcURLParams = r.Configuration.JdbcURLParams.ValueString()
	} else {
		jdbcURLParams = nil
	}
	configuration := shared.SourceSnowflakeUpdate{
		Credentials:   credentials,
		Host:          host,
		Role:          role,
		Warehouse:     warehouse,
		Database:      database,
		Schema:        schema,
		JdbcURLParams: jdbcURLParams,
	}
	out := shared.SourceSnowflakePutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
