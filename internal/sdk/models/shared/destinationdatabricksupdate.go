// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"errors"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type DestinationDatabricksUpdateSchemasAuthType string

const (
	DestinationDatabricksUpdateSchemasAuthTypeBasic DestinationDatabricksUpdateSchemasAuthType = "BASIC"
)

func (e DestinationDatabricksUpdateSchemasAuthType) ToPointer() *DestinationDatabricksUpdateSchemasAuthType {
	return &e
}
func (e *DestinationDatabricksUpdateSchemasAuthType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "BASIC":
		*e = DestinationDatabricksUpdateSchemasAuthType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationDatabricksUpdateSchemasAuthType: %v", v)
	}
}

type DestinationDatabricksUpdatePersonalAccessToken struct {
	authType            DestinationDatabricksUpdateSchemasAuthType `const:"BASIC" json:"auth_type"`
	PersonalAccessToken string                                     `json:"personal_access_token"`
}

func (d DestinationDatabricksUpdatePersonalAccessToken) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationDatabricksUpdatePersonalAccessToken) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationDatabricksUpdatePersonalAccessToken) GetAuthType() DestinationDatabricksUpdateSchemasAuthType {
	return DestinationDatabricksUpdateSchemasAuthTypeBasic
}

func (o *DestinationDatabricksUpdatePersonalAccessToken) GetPersonalAccessToken() string {
	if o == nil {
		return ""
	}
	return o.PersonalAccessToken
}

type DestinationDatabricksUpdateAuthType string

const (
	DestinationDatabricksUpdateAuthTypeOauth DestinationDatabricksUpdateAuthType = "OAUTH"
)

func (e DestinationDatabricksUpdateAuthType) ToPointer() *DestinationDatabricksUpdateAuthType {
	return &e
}
func (e *DestinationDatabricksUpdateAuthType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "OAUTH":
		*e = DestinationDatabricksUpdateAuthType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationDatabricksUpdateAuthType: %v", v)
	}
}

type DestinationDatabricksUpdateOAuth2Recommended struct {
	authType DestinationDatabricksUpdateAuthType `const:"OAUTH" json:"auth_type"`
	ClientID string                              `json:"client_id"`
	Secret   string                              `json:"secret"`
}

func (d DestinationDatabricksUpdateOAuth2Recommended) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationDatabricksUpdateOAuth2Recommended) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationDatabricksUpdateOAuth2Recommended) GetAuthType() DestinationDatabricksUpdateAuthType {
	return DestinationDatabricksUpdateAuthTypeOauth
}

func (o *DestinationDatabricksUpdateOAuth2Recommended) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *DestinationDatabricksUpdateOAuth2Recommended) GetSecret() string {
	if o == nil {
		return ""
	}
	return o.Secret
}

type DestinationDatabricksUpdateAuthenticationType string

const (
	DestinationDatabricksUpdateAuthenticationTypeDestinationDatabricksUpdateOAuth2Recommended   DestinationDatabricksUpdateAuthenticationType = "destination-databricks-update_OAuth2 (Recommended)"
	DestinationDatabricksUpdateAuthenticationTypeDestinationDatabricksUpdatePersonalAccessToken DestinationDatabricksUpdateAuthenticationType = "destination-databricks-update_Personal Access Token"
)

// DestinationDatabricksUpdateAuthentication - Authentication mechanism for Staging files and running queries
type DestinationDatabricksUpdateAuthentication struct {
	DestinationDatabricksUpdateOAuth2Recommended   *DestinationDatabricksUpdateOAuth2Recommended   `queryParam:"inline"`
	DestinationDatabricksUpdatePersonalAccessToken *DestinationDatabricksUpdatePersonalAccessToken `queryParam:"inline"`

	Type DestinationDatabricksUpdateAuthenticationType
}

func CreateDestinationDatabricksUpdateAuthenticationDestinationDatabricksUpdateOAuth2Recommended(destinationDatabricksUpdateOAuth2Recommended DestinationDatabricksUpdateOAuth2Recommended) DestinationDatabricksUpdateAuthentication {
	typ := DestinationDatabricksUpdateAuthenticationTypeDestinationDatabricksUpdateOAuth2Recommended

	return DestinationDatabricksUpdateAuthentication{
		DestinationDatabricksUpdateOAuth2Recommended: &destinationDatabricksUpdateOAuth2Recommended,
		Type: typ,
	}
}

func CreateDestinationDatabricksUpdateAuthenticationDestinationDatabricksUpdatePersonalAccessToken(destinationDatabricksUpdatePersonalAccessToken DestinationDatabricksUpdatePersonalAccessToken) DestinationDatabricksUpdateAuthentication {
	typ := DestinationDatabricksUpdateAuthenticationTypeDestinationDatabricksUpdatePersonalAccessToken

	return DestinationDatabricksUpdateAuthentication{
		DestinationDatabricksUpdatePersonalAccessToken: &destinationDatabricksUpdatePersonalAccessToken,
		Type: typ,
	}
}

func (u *DestinationDatabricksUpdateAuthentication) UnmarshalJSON(data []byte) error {

	var destinationDatabricksUpdatePersonalAccessToken DestinationDatabricksUpdatePersonalAccessToken = DestinationDatabricksUpdatePersonalAccessToken{}
	if err := utils.UnmarshalJSON(data, &destinationDatabricksUpdatePersonalAccessToken, "", true, true); err == nil {
		u.DestinationDatabricksUpdatePersonalAccessToken = &destinationDatabricksUpdatePersonalAccessToken
		u.Type = DestinationDatabricksUpdateAuthenticationTypeDestinationDatabricksUpdatePersonalAccessToken
		return nil
	}

	var destinationDatabricksUpdateOAuth2Recommended DestinationDatabricksUpdateOAuth2Recommended = DestinationDatabricksUpdateOAuth2Recommended{}
	if err := utils.UnmarshalJSON(data, &destinationDatabricksUpdateOAuth2Recommended, "", true, true); err == nil {
		u.DestinationDatabricksUpdateOAuth2Recommended = &destinationDatabricksUpdateOAuth2Recommended
		u.Type = DestinationDatabricksUpdateAuthenticationTypeDestinationDatabricksUpdateOAuth2Recommended
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for DestinationDatabricksUpdateAuthentication", string(data))
}

func (u DestinationDatabricksUpdateAuthentication) MarshalJSON() ([]byte, error) {
	if u.DestinationDatabricksUpdateOAuth2Recommended != nil {
		return utils.MarshalJSON(u.DestinationDatabricksUpdateOAuth2Recommended, "", true)
	}

	if u.DestinationDatabricksUpdatePersonalAccessToken != nil {
		return utils.MarshalJSON(u.DestinationDatabricksUpdatePersonalAccessToken, "", true)
	}

	return nil, errors.New("could not marshal union type DestinationDatabricksUpdateAuthentication: all fields are null")
}

type DestinationDatabricksUpdate struct {
	// You must agree to the Databricks JDBC Driver <a href="https://databricks.com/jdbc-odbc-driver-license">Terms & Conditions</a> to use this connector.
	AcceptTerms *bool `default:"false" json:"accept_terms"`
	// Authentication mechanism for Staging files and running queries
	Authentication DestinationDatabricksUpdateAuthentication `json:"authentication"`
	// The name of the unity catalog for the database
	Database string `json:"database"`
	// Databricks Cluster Server Hostname.
	Hostname string `json:"hostname"`
	// Databricks Cluster HTTP Path.
	HTTPPath string `json:"http_path"`
	// Databricks Cluster Port.
	Port *string `default:"443" json:"port"`
	// Default to 'true'. Switch it to 'false' for debugging purpose.
	PurgeStagingData *bool `default:"true" json:"purge_staging_data"`
	// The schema to write raw tables into (default: airbyte_internal)
	RawSchemaOverride *string `default:"airbyte_internal" json:"raw_schema_override"`
	// The default schema tables are written. If not specified otherwise, the "default" will be used.
	Schema *string `default:"default" json:"schema"`
}

func (d DestinationDatabricksUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationDatabricksUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *DestinationDatabricksUpdate) GetAcceptTerms() *bool {
	if o == nil {
		return nil
	}
	return o.AcceptTerms
}

func (o *DestinationDatabricksUpdate) GetAuthentication() DestinationDatabricksUpdateAuthentication {
	if o == nil {
		return DestinationDatabricksUpdateAuthentication{}
	}
	return o.Authentication
}

func (o *DestinationDatabricksUpdate) GetDatabase() string {
	if o == nil {
		return ""
	}
	return o.Database
}

func (o *DestinationDatabricksUpdate) GetHostname() string {
	if o == nil {
		return ""
	}
	return o.Hostname
}

func (o *DestinationDatabricksUpdate) GetHTTPPath() string {
	if o == nil {
		return ""
	}
	return o.HTTPPath
}

func (o *DestinationDatabricksUpdate) GetPort() *string {
	if o == nil {
		return nil
	}
	return o.Port
}

func (o *DestinationDatabricksUpdate) GetPurgeStagingData() *bool {
	if o == nil {
		return nil
	}
	return o.PurgeStagingData
}

func (o *DestinationDatabricksUpdate) GetRawSchemaOverride() *string {
	if o == nil {
		return nil
	}
	return o.RawSchemaOverride
}

func (o *DestinationDatabricksUpdate) GetSchema() *string {
	if o == nil {
		return nil
	}
	return o.Schema
}
