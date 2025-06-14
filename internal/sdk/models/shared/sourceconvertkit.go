// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"errors"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type SourceConvertkitSchemasAuthType string

const (
	SourceConvertkitSchemasAuthTypeAPIKey SourceConvertkitSchemasAuthType = "api_key"
)

func (e SourceConvertkitSchemasAuthType) ToPointer() *SourceConvertkitSchemasAuthType {
	return &e
}
func (e *SourceConvertkitSchemasAuthType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "api_key":
		*e = SourceConvertkitSchemasAuthType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceConvertkitSchemasAuthType: %v", v)
	}
}

type APIKey struct {
	// Kit/ConvertKit API Key
	APIKey   *string                         `default:"{{ config.get('credentials',{}).get('api_key') or config.get('api_secret') }}" json:"api_key"`
	authType SourceConvertkitSchemasAuthType `const:"api_key" json:"auth_type"`
}

func (a APIKey) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(a, "", false)
}

func (a *APIKey) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &a, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *APIKey) GetAPIKey() *string {
	if o == nil {
		return nil
	}
	return o.APIKey
}

func (o *APIKey) GetAuthType() SourceConvertkitSchemasAuthType {
	return SourceConvertkitSchemasAuthTypeAPIKey
}

type SourceConvertkitAuthType string

const (
	SourceConvertkitAuthTypeOauth20 SourceConvertkitAuthType = "oauth2.0"
)

func (e SourceConvertkitAuthType) ToPointer() *SourceConvertkitAuthType {
	return &e
}
func (e *SourceConvertkitAuthType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "oauth2.0":
		*e = SourceConvertkitAuthType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceConvertkitAuthType: %v", v)
	}
}

type SourceConvertkitOAuth20 struct {
	// An access token generated using the provided client information and refresh token.
	AccessToken *string                  `json:"access_token,omitempty"`
	authType    SourceConvertkitAuthType `const:"oauth2.0" json:"auth_type"`
	// The client ID of your OAuth application.
	ClientID string `json:"client_id"`
	// The client secret of your OAuth application.
	ClientSecret string `json:"client_secret"`
	// The time at which the current access token is set to expire
	ExpiresAt *time.Time `json:"expires_at,omitempty"`
	// A current, non-expired refresh token genereted using the provided client ID and secret.
	RefreshToken string `json:"refresh_token"`
}

func (s SourceConvertkitOAuth20) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceConvertkitOAuth20) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceConvertkitOAuth20) GetAccessToken() *string {
	if o == nil {
		return nil
	}
	return o.AccessToken
}

func (o *SourceConvertkitOAuth20) GetAuthType() SourceConvertkitAuthType {
	return SourceConvertkitAuthTypeOauth20
}

func (o *SourceConvertkitOAuth20) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourceConvertkitOAuth20) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

func (o *SourceConvertkitOAuth20) GetExpiresAt() *time.Time {
	if o == nil {
		return nil
	}
	return o.ExpiresAt
}

func (o *SourceConvertkitOAuth20) GetRefreshToken() string {
	if o == nil {
		return ""
	}
	return o.RefreshToken
}

type AuthenticationTypeType string

const (
	AuthenticationTypeTypeSourceConvertkitOAuth20 AuthenticationTypeType = "source-convertkit_OAuth 2.0"
	AuthenticationTypeTypeAPIKey                  AuthenticationTypeType = "API Key"
)

type AuthenticationType struct {
	SourceConvertkitOAuth20 *SourceConvertkitOAuth20 `queryParam:"inline"`
	APIKey                  *APIKey                  `queryParam:"inline"`

	Type AuthenticationTypeType
}

func CreateAuthenticationTypeSourceConvertkitOAuth20(sourceConvertkitOAuth20 SourceConvertkitOAuth20) AuthenticationType {
	typ := AuthenticationTypeTypeSourceConvertkitOAuth20

	return AuthenticationType{
		SourceConvertkitOAuth20: &sourceConvertkitOAuth20,
		Type:                    typ,
	}
}

func CreateAuthenticationTypeAPIKey(apiKey APIKey) AuthenticationType {
	typ := AuthenticationTypeTypeAPIKey

	return AuthenticationType{
		APIKey: &apiKey,
		Type:   typ,
	}
}

func (u *AuthenticationType) UnmarshalJSON(data []byte) error {

	var apiKey APIKey = APIKey{}
	if err := utils.UnmarshalJSON(data, &apiKey, "", true, true); err == nil {
		u.APIKey = &apiKey
		u.Type = AuthenticationTypeTypeAPIKey
		return nil
	}

	var sourceConvertkitOAuth20 SourceConvertkitOAuth20 = SourceConvertkitOAuth20{}
	if err := utils.UnmarshalJSON(data, &sourceConvertkitOAuth20, "", true, true); err == nil {
		u.SourceConvertkitOAuth20 = &sourceConvertkitOAuth20
		u.Type = AuthenticationTypeTypeSourceConvertkitOAuth20
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for AuthenticationType", string(data))
}

func (u AuthenticationType) MarshalJSON() ([]byte, error) {
	if u.SourceConvertkitOAuth20 != nil {
		return utils.MarshalJSON(u.SourceConvertkitOAuth20, "", true)
	}

	if u.APIKey != nil {
		return utils.MarshalJSON(u.APIKey, "", true)
	}

	return nil, errors.New("could not marshal union type AuthenticationType: all fields are null")
}

type Convertkit string

const (
	ConvertkitConvertkit Convertkit = "convertkit"
)

func (e Convertkit) ToPointer() *Convertkit {
	return &e
}
func (e *Convertkit) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "convertkit":
		*e = Convertkit(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Convertkit: %v", v)
	}
}

type SourceConvertkit struct {
	Credentials AuthenticationType `json:"credentials"`
	StartDate   *time.Time         `default:"2013-01-01T00:00:00Z" json:"start_date"`
	sourceType  Convertkit         `const:"convertkit" json:"sourceType"`
}

func (s SourceConvertkit) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceConvertkit) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceConvertkit) GetCredentials() AuthenticationType {
	if o == nil {
		return AuthenticationType{}
	}
	return o.Credentials
}

func (o *SourceConvertkit) GetStartDate() *time.Time {
	if o == nil {
		return nil
	}
	return o.StartDate
}

func (o *SourceConvertkit) GetSourceType() Convertkit {
	return ConvertkitConvertkit
}
