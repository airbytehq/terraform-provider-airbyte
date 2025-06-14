// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"errors"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type DestinationSnowflakeSchemasCredentialsAuthType string

const (
	DestinationSnowflakeSchemasCredentialsAuthTypeOAuth20 DestinationSnowflakeSchemasCredentialsAuthType = "OAuth2.0"
)

func (e DestinationSnowflakeSchemasCredentialsAuthType) ToPointer() *DestinationSnowflakeSchemasCredentialsAuthType {
	return &e
}
func (e *DestinationSnowflakeSchemasCredentialsAuthType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "OAuth2.0":
		*e = DestinationSnowflakeSchemasCredentialsAuthType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationSnowflakeSchemasCredentialsAuthType: %v", v)
	}
}

type DestinationSnowflakeOAuth20 struct {
	// Enter you application's Access Token
	AccessToken string                                          `json:"access_token"`
	authType    *DestinationSnowflakeSchemasCredentialsAuthType `const:"OAuth2.0" json:"auth_type"`
	// Enter your application's Client ID
	ClientID *string `json:"client_id,omitempty"`
	// Enter your application's Client secret
	ClientSecret *string `json:"client_secret,omitempty"`
	// Enter your application's Refresh Token
	RefreshToken string `json:"refresh_token"`
}

func (d DestinationSnowflakeOAuth20) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationSnowflakeOAuth20) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationSnowflakeOAuth20) GetAccessToken() string {
	if o == nil {
		return ""
	}
	return o.AccessToken
}

func (o *DestinationSnowflakeOAuth20) GetAuthType() *DestinationSnowflakeSchemasCredentialsAuthType {
	return DestinationSnowflakeSchemasCredentialsAuthTypeOAuth20.ToPointer()
}

func (o *DestinationSnowflakeOAuth20) GetClientID() *string {
	if o == nil {
		return nil
	}
	return o.ClientID
}

func (o *DestinationSnowflakeOAuth20) GetClientSecret() *string {
	if o == nil {
		return nil
	}
	return o.ClientSecret
}

func (o *DestinationSnowflakeOAuth20) GetRefreshToken() string {
	if o == nil {
		return ""
	}
	return o.RefreshToken
}

type DestinationSnowflakeSchemasAuthType string

const (
	DestinationSnowflakeSchemasAuthTypeUsernameAndPassword DestinationSnowflakeSchemasAuthType = "Username and Password"
)

func (e DestinationSnowflakeSchemasAuthType) ToPointer() *DestinationSnowflakeSchemasAuthType {
	return &e
}
func (e *DestinationSnowflakeSchemasAuthType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "Username and Password":
		*e = DestinationSnowflakeSchemasAuthType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationSnowflakeSchemasAuthType: %v", v)
	}
}

type DestinationSnowflakeUsernameAndPassword struct {
	authType *DestinationSnowflakeSchemasAuthType `const:"Username and Password" json:"auth_type"`
	// Enter the password associated with the username.
	Password string `json:"password"`
}

func (d DestinationSnowflakeUsernameAndPassword) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationSnowflakeUsernameAndPassword) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationSnowflakeUsernameAndPassword) GetAuthType() *DestinationSnowflakeSchemasAuthType {
	return DestinationSnowflakeSchemasAuthTypeUsernameAndPassword.ToPointer()
}

func (o *DestinationSnowflakeUsernameAndPassword) GetPassword() string {
	if o == nil {
		return ""
	}
	return o.Password
}

type DestinationSnowflakeAuthType string

const (
	DestinationSnowflakeAuthTypeKeyPairAuthentication DestinationSnowflakeAuthType = "Key Pair Authentication"
)

func (e DestinationSnowflakeAuthType) ToPointer() *DestinationSnowflakeAuthType {
	return &e
}
func (e *DestinationSnowflakeAuthType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "Key Pair Authentication":
		*e = DestinationSnowflakeAuthType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationSnowflakeAuthType: %v", v)
	}
}

type DestinationSnowflakeKeyPairAuthentication struct {
	authType *DestinationSnowflakeAuthType `const:"Key Pair Authentication" json:"auth_type"`
	// RSA Private key to use for Snowflake connection. See the <a href="https://docs.airbyte.com/integrations/destinations/snowflake">docs</a> for more information on how to obtain this key.
	PrivateKey string `json:"private_key"`
	// Passphrase for private key
	PrivateKeyPassword *string `json:"private_key_password,omitempty"`
}

func (d DestinationSnowflakeKeyPairAuthentication) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationSnowflakeKeyPairAuthentication) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationSnowflakeKeyPairAuthentication) GetAuthType() *DestinationSnowflakeAuthType {
	return DestinationSnowflakeAuthTypeKeyPairAuthentication.ToPointer()
}

func (o *DestinationSnowflakeKeyPairAuthentication) GetPrivateKey() string {
	if o == nil {
		return ""
	}
	return o.PrivateKey
}

func (o *DestinationSnowflakeKeyPairAuthentication) GetPrivateKeyPassword() *string {
	if o == nil {
		return nil
	}
	return o.PrivateKeyPassword
}

type DestinationSnowflakeAuthorizationMethodType string

const (
	DestinationSnowflakeAuthorizationMethodTypeDestinationSnowflakeKeyPairAuthentication DestinationSnowflakeAuthorizationMethodType = "destination-snowflake_Key Pair Authentication"
	DestinationSnowflakeAuthorizationMethodTypeDestinationSnowflakeUsernameAndPassword   DestinationSnowflakeAuthorizationMethodType = "destination-snowflake_Username and Password"
	DestinationSnowflakeAuthorizationMethodTypeDestinationSnowflakeOAuth20               DestinationSnowflakeAuthorizationMethodType = "destination-snowflake_OAuth2.0"
)

type DestinationSnowflakeAuthorizationMethod struct {
	DestinationSnowflakeKeyPairAuthentication *DestinationSnowflakeKeyPairAuthentication `queryParam:"inline"`
	DestinationSnowflakeUsernameAndPassword   *DestinationSnowflakeUsernameAndPassword   `queryParam:"inline"`
	DestinationSnowflakeOAuth20               *DestinationSnowflakeOAuth20               `queryParam:"inline"`

	Type DestinationSnowflakeAuthorizationMethodType
}

func CreateDestinationSnowflakeAuthorizationMethodDestinationSnowflakeKeyPairAuthentication(destinationSnowflakeKeyPairAuthentication DestinationSnowflakeKeyPairAuthentication) DestinationSnowflakeAuthorizationMethod {
	typ := DestinationSnowflakeAuthorizationMethodTypeDestinationSnowflakeKeyPairAuthentication

	return DestinationSnowflakeAuthorizationMethod{
		DestinationSnowflakeKeyPairAuthentication: &destinationSnowflakeKeyPairAuthentication,
		Type: typ,
	}
}

func CreateDestinationSnowflakeAuthorizationMethodDestinationSnowflakeUsernameAndPassword(destinationSnowflakeUsernameAndPassword DestinationSnowflakeUsernameAndPassword) DestinationSnowflakeAuthorizationMethod {
	typ := DestinationSnowflakeAuthorizationMethodTypeDestinationSnowflakeUsernameAndPassword

	return DestinationSnowflakeAuthorizationMethod{
		DestinationSnowflakeUsernameAndPassword: &destinationSnowflakeUsernameAndPassword,
		Type:                                    typ,
	}
}

func CreateDestinationSnowflakeAuthorizationMethodDestinationSnowflakeOAuth20(destinationSnowflakeOAuth20 DestinationSnowflakeOAuth20) DestinationSnowflakeAuthorizationMethod {
	typ := DestinationSnowflakeAuthorizationMethodTypeDestinationSnowflakeOAuth20

	return DestinationSnowflakeAuthorizationMethod{
		DestinationSnowflakeOAuth20: &destinationSnowflakeOAuth20,
		Type:                        typ,
	}
}

func (u *DestinationSnowflakeAuthorizationMethod) UnmarshalJSON(data []byte) error {

	var destinationSnowflakeUsernameAndPassword DestinationSnowflakeUsernameAndPassword = DestinationSnowflakeUsernameAndPassword{}
	if err := utils.UnmarshalJSON(data, &destinationSnowflakeUsernameAndPassword, "", true, true); err == nil {
		u.DestinationSnowflakeUsernameAndPassword = &destinationSnowflakeUsernameAndPassword
		u.Type = DestinationSnowflakeAuthorizationMethodTypeDestinationSnowflakeUsernameAndPassword
		return nil
	}

	var destinationSnowflakeKeyPairAuthentication DestinationSnowflakeKeyPairAuthentication = DestinationSnowflakeKeyPairAuthentication{}
	if err := utils.UnmarshalJSON(data, &destinationSnowflakeKeyPairAuthentication, "", true, true); err == nil {
		u.DestinationSnowflakeKeyPairAuthentication = &destinationSnowflakeKeyPairAuthentication
		u.Type = DestinationSnowflakeAuthorizationMethodTypeDestinationSnowflakeKeyPairAuthentication
		return nil
	}

	var destinationSnowflakeOAuth20 DestinationSnowflakeOAuth20 = DestinationSnowflakeOAuth20{}
	if err := utils.UnmarshalJSON(data, &destinationSnowflakeOAuth20, "", true, true); err == nil {
		u.DestinationSnowflakeOAuth20 = &destinationSnowflakeOAuth20
		u.Type = DestinationSnowflakeAuthorizationMethodTypeDestinationSnowflakeOAuth20
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for DestinationSnowflakeAuthorizationMethod", string(data))
}

func (u DestinationSnowflakeAuthorizationMethod) MarshalJSON() ([]byte, error) {
	if u.DestinationSnowflakeKeyPairAuthentication != nil {
		return utils.MarshalJSON(u.DestinationSnowflakeKeyPairAuthentication, "", true)
	}

	if u.DestinationSnowflakeUsernameAndPassword != nil {
		return utils.MarshalJSON(u.DestinationSnowflakeUsernameAndPassword, "", true)
	}

	if u.DestinationSnowflakeOAuth20 != nil {
		return utils.MarshalJSON(u.DestinationSnowflakeOAuth20, "", true)
	}

	return nil, errors.New("could not marshal union type DestinationSnowflakeAuthorizationMethod: all fields are null")
}

type DestinationSnowflakeSnowflake string

const (
	DestinationSnowflakeSnowflakeSnowflake DestinationSnowflakeSnowflake = "snowflake"
)

func (e DestinationSnowflakeSnowflake) ToPointer() *DestinationSnowflakeSnowflake {
	return &e
}
func (e *DestinationSnowflakeSnowflake) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "snowflake":
		*e = DestinationSnowflakeSnowflake(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationSnowflakeSnowflake: %v", v)
	}
}

type DestinationSnowflake struct {
	Credentials *DestinationSnowflakeAuthorizationMethod `json:"credentials,omitempty"`
	// Enter the name of the <a href="https://docs.snowflake.com/en/sql-reference/ddl-database.html#database-schema-share-ddl">database</a> you want to sync data into
	Database string `json:"database"`
	// Disable Writing Final Tables. WARNING! The data format in _airbyte_data is likely stable but there are no guarantees that other metadata columns will remain the same in future versions
	DisableTypeDedupe *bool `default:"false" json:"disable_type_dedupe"`
	// Enter your Snowflake account's <a href="https://docs.snowflake.com/en/user-guide/admin-account-identifier.html#using-an-account-locator-as-an-identifier">locator</a> (in the format <account_locator>.<region>.<cloud>.snowflakecomputing.com)
	Host string `json:"host"`
	// Enter the additional properties to pass to the JDBC URL string when connecting to the database (formatted as key=value pairs separated by the symbol &). Example: key1=value1&key2=value2&key3=value3
	JdbcURLParams *string `json:"jdbc_url_params,omitempty"`
	// The schema to write raw tables into (default: airbyte_internal)
	RawDataSchema *string `json:"raw_data_schema,omitempty"`
	// The number of days of Snowflake Time Travel to enable on the tables. See <a href="https://docs.snowflake.com/en/user-guide/data-time-travel#data-retention-period">Snowflake's documentation</a> for more information. Setting a nonzero value will incur increased storage costs in your Snowflake instance.
	RetentionPeriodDays *int64 `default:"1" json:"retention_period_days"`
	// Enter the <a href="https://docs.snowflake.com/en/user-guide/security-access-control-overview.html#roles">role</a> that you want to use to access Snowflake
	Role string `json:"role"`
	// Enter the name of the default <a href="https://docs.snowflake.com/en/sql-reference/ddl-database.html#database-schema-share-ddl">schema</a>
	Schema string `json:"schema"`
	// Use MERGE for de-duplication of final tables. This option no effect if Final tables are disabled or Sync mode is not DEDUPE
	UseMergeForUpsert *bool `default:"false" json:"use_merge_for_upsert"`
	// Enter the name of the user you want to use to access the database
	Username string `json:"username"`
	// Enter the name of the <a href="https://docs.snowflake.com/en/user-guide/warehouses-overview.html#overview-of-warehouses">warehouse</a> that you want to use as a compute cluster
	Warehouse       string                        `json:"warehouse"`
	destinationType DestinationSnowflakeSnowflake `const:"snowflake" json:"destinationType"`
}

func (d DestinationSnowflake) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationSnowflake) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *DestinationSnowflake) GetCredentials() *DestinationSnowflakeAuthorizationMethod {
	if o == nil {
		return nil
	}
	return o.Credentials
}

func (o *DestinationSnowflake) GetDatabase() string {
	if o == nil {
		return ""
	}
	return o.Database
}

func (o *DestinationSnowflake) GetDisableTypeDedupe() *bool {
	if o == nil {
		return nil
	}
	return o.DisableTypeDedupe
}

func (o *DestinationSnowflake) GetHost() string {
	if o == nil {
		return ""
	}
	return o.Host
}

func (o *DestinationSnowflake) GetJdbcURLParams() *string {
	if o == nil {
		return nil
	}
	return o.JdbcURLParams
}

func (o *DestinationSnowflake) GetRawDataSchema() *string {
	if o == nil {
		return nil
	}
	return o.RawDataSchema
}

func (o *DestinationSnowflake) GetRetentionPeriodDays() *int64 {
	if o == nil {
		return nil
	}
	return o.RetentionPeriodDays
}

func (o *DestinationSnowflake) GetRole() string {
	if o == nil {
		return ""
	}
	return o.Role
}

func (o *DestinationSnowflake) GetSchema() string {
	if o == nil {
		return ""
	}
	return o.Schema
}

func (o *DestinationSnowflake) GetUseMergeForUpsert() *bool {
	if o == nil {
		return nil
	}
	return o.UseMergeForUpsert
}

func (o *DestinationSnowflake) GetUsername() string {
	if o == nil {
		return ""
	}
	return o.Username
}

func (o *DestinationSnowflake) GetWarehouse() string {
	if o == nil {
		return ""
	}
	return o.Warehouse
}

func (o *DestinationSnowflake) GetDestinationType() DestinationSnowflakeSnowflake {
	return DestinationSnowflakeSnowflakeSnowflake
}
