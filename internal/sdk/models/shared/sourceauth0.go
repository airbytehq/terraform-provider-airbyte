// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"errors"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type SourceAuth0AuthenticationMethod string

const (
	SourceAuth0AuthenticationMethodOauth2AccessToken SourceAuth0AuthenticationMethod = "oauth2_access_token"
)

func (e SourceAuth0AuthenticationMethod) ToPointer() *SourceAuth0AuthenticationMethod {
	return &e
}
func (e *SourceAuth0AuthenticationMethod) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "oauth2_access_token":
		*e = SourceAuth0AuthenticationMethod(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceAuth0AuthenticationMethod: %v", v)
	}
}

type OAuth2AccessToken struct {
	// Also called <a href="https://auth0.com/docs/secure/tokens/access-tokens/get-management-api-access-tokens-for-testing">API Access Token </a> The access token used to call the Auth0 Management API Token. It's a JWT that contains specific grant permissions knowns as scopes.
	AccessToken string                          `json:"access_token"`
	authType    SourceAuth0AuthenticationMethod `const:"oauth2_access_token" json:"auth_type"`
}

func (o OAuth2AccessToken) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(o, "", false)
}

func (o *OAuth2AccessToken) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &o, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *OAuth2AccessToken) GetAccessToken() string {
	if o == nil {
		return ""
	}
	return o.AccessToken
}

func (o *OAuth2AccessToken) GetAuthType() SourceAuth0AuthenticationMethod {
	return SourceAuth0AuthenticationMethodOauth2AccessToken
}

type SourceAuth0SchemasAuthenticationMethod string

const (
	SourceAuth0SchemasAuthenticationMethodOauth2ConfidentialApplication SourceAuth0SchemasAuthenticationMethod = "oauth2_confidential_application"
)

func (e SourceAuth0SchemasAuthenticationMethod) ToPointer() *SourceAuth0SchemasAuthenticationMethod {
	return &e
}
func (e *SourceAuth0SchemasAuthenticationMethod) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "oauth2_confidential_application":
		*e = SourceAuth0SchemasAuthenticationMethod(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceAuth0SchemasAuthenticationMethod: %v", v)
	}
}

type OAuth2ConfidentialApplication struct {
	// The audience for the token, which is your API. You can find this in the Identifier field on your  <a href="https://manage.auth0.com/#/apis">API's settings tab</a>
	Audience string                                 `json:"audience"`
	authType SourceAuth0SchemasAuthenticationMethod `const:"oauth2_confidential_application" json:"auth_type"`
	// Your application's Client ID. You can find this value on the <a href="https://manage.auth0.com/#/applications">application's settings tab</a> after you login the admin portal.
	ClientID string `json:"client_id"`
	// Your application's Client Secret. You can find this value on the <a href="https://manage.auth0.com/#/applications">application's settings tab</a> after you login the admin portal.
	ClientSecret string `json:"client_secret"`
}

func (o OAuth2ConfidentialApplication) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(o, "", false)
}

func (o *OAuth2ConfidentialApplication) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &o, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *OAuth2ConfidentialApplication) GetAudience() string {
	if o == nil {
		return ""
	}
	return o.Audience
}

func (o *OAuth2ConfidentialApplication) GetAuthType() SourceAuth0SchemasAuthenticationMethod {
	return SourceAuth0SchemasAuthenticationMethodOauth2ConfidentialApplication
}

func (o *OAuth2ConfidentialApplication) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *OAuth2ConfidentialApplication) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

type AuthenticationMethodType string

const (
	AuthenticationMethodTypeOAuth2ConfidentialApplication AuthenticationMethodType = "OAuth2 Confidential Application"
	AuthenticationMethodTypeOAuth2AccessToken             AuthenticationMethodType = "OAuth2 Access Token"
)

type AuthenticationMethod struct {
	OAuth2ConfidentialApplication *OAuth2ConfidentialApplication `queryParam:"inline"`
	OAuth2AccessToken             *OAuth2AccessToken             `queryParam:"inline"`

	Type AuthenticationMethodType
}

func CreateAuthenticationMethodOAuth2ConfidentialApplication(oAuth2ConfidentialApplication OAuth2ConfidentialApplication) AuthenticationMethod {
	typ := AuthenticationMethodTypeOAuth2ConfidentialApplication

	return AuthenticationMethod{
		OAuth2ConfidentialApplication: &oAuth2ConfidentialApplication,
		Type:                          typ,
	}
}

func CreateAuthenticationMethodOAuth2AccessToken(oAuth2AccessToken OAuth2AccessToken) AuthenticationMethod {
	typ := AuthenticationMethodTypeOAuth2AccessToken

	return AuthenticationMethod{
		OAuth2AccessToken: &oAuth2AccessToken,
		Type:              typ,
	}
}

func (u *AuthenticationMethod) UnmarshalJSON(data []byte) error {

	var oAuth2AccessToken OAuth2AccessToken = OAuth2AccessToken{}
	if err := utils.UnmarshalJSON(data, &oAuth2AccessToken, "", true, true); err == nil {
		u.OAuth2AccessToken = &oAuth2AccessToken
		u.Type = AuthenticationMethodTypeOAuth2AccessToken
		return nil
	}

	var oAuth2ConfidentialApplication OAuth2ConfidentialApplication = OAuth2ConfidentialApplication{}
	if err := utils.UnmarshalJSON(data, &oAuth2ConfidentialApplication, "", true, true); err == nil {
		u.OAuth2ConfidentialApplication = &oAuth2ConfidentialApplication
		u.Type = AuthenticationMethodTypeOAuth2ConfidentialApplication
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for AuthenticationMethod", string(data))
}

func (u AuthenticationMethod) MarshalJSON() ([]byte, error) {
	if u.OAuth2ConfidentialApplication != nil {
		return utils.MarshalJSON(u.OAuth2ConfidentialApplication, "", true)
	}

	if u.OAuth2AccessToken != nil {
		return utils.MarshalJSON(u.OAuth2AccessToken, "", true)
	}

	return nil, errors.New("could not marshal union type AuthenticationMethod: all fields are null")
}

type Auth0 string

const (
	Auth0Auth0 Auth0 = "auth0"
)

func (e Auth0) ToPointer() *Auth0 {
	return &e
}
func (e *Auth0) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "auth0":
		*e = Auth0(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Auth0: %v", v)
	}
}

type SourceAuth0 struct {
	// The Authentication API is served over HTTPS. All URLs referenced in the documentation have the following base `https://YOUR_DOMAIN`
	BaseURL     string               `json:"base_url"`
	Credentials AuthenticationMethod `json:"credentials"`
	// UTC date and time in the format 2017-01-25T00:00:00Z. Any data before this date will not be replicated.
	StartDate  *string `default:"2023-08-05T00:43:59.244Z" json:"start_date"`
	sourceType Auth0   `const:"auth0" json:"sourceType"`
}

func (s SourceAuth0) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceAuth0) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceAuth0) GetBaseURL() string {
	if o == nil {
		return ""
	}
	return o.BaseURL
}

func (o *SourceAuth0) GetCredentials() AuthenticationMethod {
	if o == nil {
		return AuthenticationMethod{}
	}
	return o.Credentials
}

func (o *SourceAuth0) GetStartDate() *string {
	if o == nil {
		return nil
	}
	return o.StartDate
}

func (o *SourceAuth0) GetSourceType() Auth0 {
	return Auth0Auth0
}
