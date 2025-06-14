// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"errors"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type SourceTypeformUpdateSchemasAuthType string

const (
	SourceTypeformUpdateSchemasAuthTypeAccessToken SourceTypeformUpdateSchemasAuthType = "access_token"
)

func (e SourceTypeformUpdateSchemasAuthType) ToPointer() *SourceTypeformUpdateSchemasAuthType {
	return &e
}
func (e *SourceTypeformUpdateSchemasAuthType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "access_token":
		*e = SourceTypeformUpdateSchemasAuthType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceTypeformUpdateSchemasAuthType: %v", v)
	}
}

type SourceTypeformUpdatePrivateToken struct {
	// Log into your Typeform account and then generate a personal Access Token.
	AccessToken string                               `json:"access_token"`
	authType    *SourceTypeformUpdateSchemasAuthType `const:"access_token" json:"auth_type,omitempty"`
}

func (s SourceTypeformUpdatePrivateToken) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceTypeformUpdatePrivateToken) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceTypeformUpdatePrivateToken) GetAccessToken() string {
	if o == nil {
		return ""
	}
	return o.AccessToken
}

func (o *SourceTypeformUpdatePrivateToken) GetAuthType() *SourceTypeformUpdateSchemasAuthType {
	return SourceTypeformUpdateSchemasAuthTypeAccessToken.ToPointer()
}

type SourceTypeformUpdateAuthType string

const (
	SourceTypeformUpdateAuthTypeOauth20 SourceTypeformUpdateAuthType = "oauth2.0"
)

func (e SourceTypeformUpdateAuthType) ToPointer() *SourceTypeformUpdateAuthType {
	return &e
}
func (e *SourceTypeformUpdateAuthType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "oauth2.0":
		*e = SourceTypeformUpdateAuthType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceTypeformUpdateAuthType: %v", v)
	}
}

type SourceTypeformUpdateOAuth20 struct {
	// Access Token for making authenticated requests.
	AccessToken string                        `json:"access_token"`
	authType    *SourceTypeformUpdateAuthType `const:"oauth2.0" json:"auth_type,omitempty"`
	// The Client ID of the Typeform developer application.
	ClientID string `json:"client_id"`
	// The Client Secret the Typeform developer application.
	ClientSecret string `json:"client_secret"`
	// The key to refresh the expired access_token.
	RefreshToken string `json:"refresh_token"`
	// The date-time when the access token should be refreshed.
	TokenExpiryDate time.Time `json:"token_expiry_date"`
}

func (s SourceTypeformUpdateOAuth20) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceTypeformUpdateOAuth20) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceTypeformUpdateOAuth20) GetAccessToken() string {
	if o == nil {
		return ""
	}
	return o.AccessToken
}

func (o *SourceTypeformUpdateOAuth20) GetAuthType() *SourceTypeformUpdateAuthType {
	return SourceTypeformUpdateAuthTypeOauth20.ToPointer()
}

func (o *SourceTypeformUpdateOAuth20) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourceTypeformUpdateOAuth20) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

func (o *SourceTypeformUpdateOAuth20) GetRefreshToken() string {
	if o == nil {
		return ""
	}
	return o.RefreshToken
}

func (o *SourceTypeformUpdateOAuth20) GetTokenExpiryDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.TokenExpiryDate
}

type SourceTypeformUpdateAuthorizationMethodType string

const (
	SourceTypeformUpdateAuthorizationMethodTypeSourceTypeformUpdateOAuth20      SourceTypeformUpdateAuthorizationMethodType = "source-typeform-update_OAuth2.0"
	SourceTypeformUpdateAuthorizationMethodTypeSourceTypeformUpdatePrivateToken SourceTypeformUpdateAuthorizationMethodType = "source-typeform-update_Private Token"
)

type SourceTypeformUpdateAuthorizationMethod struct {
	SourceTypeformUpdateOAuth20      *SourceTypeformUpdateOAuth20      `queryParam:"inline"`
	SourceTypeformUpdatePrivateToken *SourceTypeformUpdatePrivateToken `queryParam:"inline"`

	Type SourceTypeformUpdateAuthorizationMethodType
}

func CreateSourceTypeformUpdateAuthorizationMethodSourceTypeformUpdateOAuth20(sourceTypeformUpdateOAuth20 SourceTypeformUpdateOAuth20) SourceTypeformUpdateAuthorizationMethod {
	typ := SourceTypeformUpdateAuthorizationMethodTypeSourceTypeformUpdateOAuth20

	return SourceTypeformUpdateAuthorizationMethod{
		SourceTypeformUpdateOAuth20: &sourceTypeformUpdateOAuth20,
		Type:                        typ,
	}
}

func CreateSourceTypeformUpdateAuthorizationMethodSourceTypeformUpdatePrivateToken(sourceTypeformUpdatePrivateToken SourceTypeformUpdatePrivateToken) SourceTypeformUpdateAuthorizationMethod {
	typ := SourceTypeformUpdateAuthorizationMethodTypeSourceTypeformUpdatePrivateToken

	return SourceTypeformUpdateAuthorizationMethod{
		SourceTypeformUpdatePrivateToken: &sourceTypeformUpdatePrivateToken,
		Type:                             typ,
	}
}

func (u *SourceTypeformUpdateAuthorizationMethod) UnmarshalJSON(data []byte) error {

	var sourceTypeformUpdatePrivateToken SourceTypeformUpdatePrivateToken = SourceTypeformUpdatePrivateToken{}
	if err := utils.UnmarshalJSON(data, &sourceTypeformUpdatePrivateToken, "", true, true); err == nil {
		u.SourceTypeformUpdatePrivateToken = &sourceTypeformUpdatePrivateToken
		u.Type = SourceTypeformUpdateAuthorizationMethodTypeSourceTypeformUpdatePrivateToken
		return nil
	}

	var sourceTypeformUpdateOAuth20 SourceTypeformUpdateOAuth20 = SourceTypeformUpdateOAuth20{}
	if err := utils.UnmarshalJSON(data, &sourceTypeformUpdateOAuth20, "", true, true); err == nil {
		u.SourceTypeformUpdateOAuth20 = &sourceTypeformUpdateOAuth20
		u.Type = SourceTypeformUpdateAuthorizationMethodTypeSourceTypeformUpdateOAuth20
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for SourceTypeformUpdateAuthorizationMethod", string(data))
}

func (u SourceTypeformUpdateAuthorizationMethod) MarshalJSON() ([]byte, error) {
	if u.SourceTypeformUpdateOAuth20 != nil {
		return utils.MarshalJSON(u.SourceTypeformUpdateOAuth20, "", true)
	}

	if u.SourceTypeformUpdatePrivateToken != nil {
		return utils.MarshalJSON(u.SourceTypeformUpdatePrivateToken, "", true)
	}

	return nil, errors.New("could not marshal union type SourceTypeformUpdateAuthorizationMethod: all fields are null")
}

type SourceTypeformUpdate struct {
	Credentials SourceTypeformUpdateAuthorizationMethod `json:"credentials"`
	// When this parameter is set, the connector will replicate data only from the input forms. Otherwise, all forms in your Typeform account will be replicated. You can find form IDs in your form URLs. For example, in the URL "https://mysite.typeform.com/to/u6nXL7" the form_id is u6nXL7. You can find form URLs on Share panel
	FormIds []string `json:"form_ids,omitempty"`
	// The date from which you'd like to replicate data for Typeform API, in the format YYYY-MM-DDT00:00:00Z. All data generated after this date will be replicated.
	StartDate *time.Time `json:"start_date,omitempty"`
}

func (s SourceTypeformUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceTypeformUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceTypeformUpdate) GetCredentials() SourceTypeformUpdateAuthorizationMethod {
	if o == nil {
		return SourceTypeformUpdateAuthorizationMethod{}
	}
	return o.Credentials
}

func (o *SourceTypeformUpdate) GetFormIds() []string {
	if o == nil {
		return nil
	}
	return o.FormIds
}

func (o *SourceTypeformUpdate) GetStartDate() *time.Time {
	if o == nil {
		return nil
	}
	return o.StartDate
}
