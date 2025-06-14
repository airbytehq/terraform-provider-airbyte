// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"errors"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type SourceZendeskTalkSchemasAuthType string

const (
	SourceZendeskTalkSchemasAuthTypeAPIToken SourceZendeskTalkSchemasAuthType = "api_token"
)

func (e SourceZendeskTalkSchemasAuthType) ToPointer() *SourceZendeskTalkSchemasAuthType {
	return &e
}
func (e *SourceZendeskTalkSchemasAuthType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "api_token":
		*e = SourceZendeskTalkSchemasAuthType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceZendeskTalkSchemasAuthType: %v", v)
	}
}

type SourceZendeskTalkAPIToken struct {
	// The value of the API token generated. See the <a href="https://docs.airbyte.com/integrations/sources/zendesk-talk">docs</a> for more information.
	APIToken string                            `json:"api_token"`
	authType *SourceZendeskTalkSchemasAuthType `const:"api_token" json:"auth_type,omitempty"`
	// The user email for your Zendesk account.
	Email                string `json:"email"`
	AdditionalProperties any    `additionalProperties:"true" json:"-"`
}

func (s SourceZendeskTalkAPIToken) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceZendeskTalkAPIToken) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceZendeskTalkAPIToken) GetAPIToken() string {
	if o == nil {
		return ""
	}
	return o.APIToken
}

func (o *SourceZendeskTalkAPIToken) GetAuthType() *SourceZendeskTalkSchemasAuthType {
	return SourceZendeskTalkSchemasAuthTypeAPIToken.ToPointer()
}

func (o *SourceZendeskTalkAPIToken) GetEmail() string {
	if o == nil {
		return ""
	}
	return o.Email
}

func (o *SourceZendeskTalkAPIToken) GetAdditionalProperties() any {
	if o == nil {
		return nil
	}
	return o.AdditionalProperties
}

type SourceZendeskTalkAuthType string

const (
	SourceZendeskTalkAuthTypeOauth20 SourceZendeskTalkAuthType = "oauth2.0"
)

func (e SourceZendeskTalkAuthType) ToPointer() *SourceZendeskTalkAuthType {
	return &e
}
func (e *SourceZendeskTalkAuthType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "oauth2.0":
		*e = SourceZendeskTalkAuthType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceZendeskTalkAuthType: %v", v)
	}
}

type SourceZendeskTalkOAuth20 struct {
	// The value of the API token generated. See the <a href="https://docs.airbyte.com/integrations/sources/zendesk-talk">docs</a> for more information.
	AccessToken string                     `json:"access_token"`
	authType    *SourceZendeskTalkAuthType `const:"oauth2.0" json:"auth_type,omitempty"`
	// Client ID
	ClientID *string `json:"client_id,omitempty"`
	// Client Secret
	ClientSecret         *string `json:"client_secret,omitempty"`
	AdditionalProperties any     `additionalProperties:"true" json:"-"`
}

func (s SourceZendeskTalkOAuth20) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceZendeskTalkOAuth20) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceZendeskTalkOAuth20) GetAccessToken() string {
	if o == nil {
		return ""
	}
	return o.AccessToken
}

func (o *SourceZendeskTalkOAuth20) GetAuthType() *SourceZendeskTalkAuthType {
	return SourceZendeskTalkAuthTypeOauth20.ToPointer()
}

func (o *SourceZendeskTalkOAuth20) GetClientID() *string {
	if o == nil {
		return nil
	}
	return o.ClientID
}

func (o *SourceZendeskTalkOAuth20) GetClientSecret() *string {
	if o == nil {
		return nil
	}
	return o.ClientSecret
}

func (o *SourceZendeskTalkOAuth20) GetAdditionalProperties() any {
	if o == nil {
		return nil
	}
	return o.AdditionalProperties
}

type SourceZendeskTalkAuthenticationType string

const (
	SourceZendeskTalkAuthenticationTypeSourceZendeskTalkOAuth20  SourceZendeskTalkAuthenticationType = "source-zendesk-talk_OAuth2.0"
	SourceZendeskTalkAuthenticationTypeSourceZendeskTalkAPIToken SourceZendeskTalkAuthenticationType = "source-zendesk-talk_API Token"
)

// SourceZendeskTalkAuthentication - Zendesk service provides two authentication methods. Choose between: `OAuth2.0` or `API token`.
type SourceZendeskTalkAuthentication struct {
	SourceZendeskTalkOAuth20  *SourceZendeskTalkOAuth20  `queryParam:"inline"`
	SourceZendeskTalkAPIToken *SourceZendeskTalkAPIToken `queryParam:"inline"`

	Type SourceZendeskTalkAuthenticationType
}

func CreateSourceZendeskTalkAuthenticationSourceZendeskTalkOAuth20(sourceZendeskTalkOAuth20 SourceZendeskTalkOAuth20) SourceZendeskTalkAuthentication {
	typ := SourceZendeskTalkAuthenticationTypeSourceZendeskTalkOAuth20

	return SourceZendeskTalkAuthentication{
		SourceZendeskTalkOAuth20: &sourceZendeskTalkOAuth20,
		Type:                     typ,
	}
}

func CreateSourceZendeskTalkAuthenticationSourceZendeskTalkAPIToken(sourceZendeskTalkAPIToken SourceZendeskTalkAPIToken) SourceZendeskTalkAuthentication {
	typ := SourceZendeskTalkAuthenticationTypeSourceZendeskTalkAPIToken

	return SourceZendeskTalkAuthentication{
		SourceZendeskTalkAPIToken: &sourceZendeskTalkAPIToken,
		Type:                      typ,
	}
}

func (u *SourceZendeskTalkAuthentication) UnmarshalJSON(data []byte) error {

	var sourceZendeskTalkAPIToken SourceZendeskTalkAPIToken = SourceZendeskTalkAPIToken{}
	if err := utils.UnmarshalJSON(data, &sourceZendeskTalkAPIToken, "", true, true); err == nil {
		u.SourceZendeskTalkAPIToken = &sourceZendeskTalkAPIToken
		u.Type = SourceZendeskTalkAuthenticationTypeSourceZendeskTalkAPIToken
		return nil
	}

	var sourceZendeskTalkOAuth20 SourceZendeskTalkOAuth20 = SourceZendeskTalkOAuth20{}
	if err := utils.UnmarshalJSON(data, &sourceZendeskTalkOAuth20, "", true, true); err == nil {
		u.SourceZendeskTalkOAuth20 = &sourceZendeskTalkOAuth20
		u.Type = SourceZendeskTalkAuthenticationTypeSourceZendeskTalkOAuth20
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for SourceZendeskTalkAuthentication", string(data))
}

func (u SourceZendeskTalkAuthentication) MarshalJSON() ([]byte, error) {
	if u.SourceZendeskTalkOAuth20 != nil {
		return utils.MarshalJSON(u.SourceZendeskTalkOAuth20, "", true)
	}

	if u.SourceZendeskTalkAPIToken != nil {
		return utils.MarshalJSON(u.SourceZendeskTalkAPIToken, "", true)
	}

	return nil, errors.New("could not marshal union type SourceZendeskTalkAuthentication: all fields are null")
}

type ZendeskTalk string

const (
	ZendeskTalkZendeskTalk ZendeskTalk = "zendesk-talk"
)

func (e ZendeskTalk) ToPointer() *ZendeskTalk {
	return &e
}
func (e *ZendeskTalk) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "zendesk-talk":
		*e = ZendeskTalk(v)
		return nil
	default:
		return fmt.Errorf("invalid value for ZendeskTalk: %v", v)
	}
}

type SourceZendeskTalk struct {
	// Zendesk service provides two authentication methods. Choose between: `OAuth2.0` or `API token`.
	Credentials *SourceZendeskTalkAuthentication `json:"credentials,omitempty"`
	// The date from which you'd like to replicate data for Zendesk Talk API, in the format YYYY-MM-DDT00:00:00Z. All data generated after this date will be replicated.
	StartDate time.Time `json:"start_date"`
	// This is your Zendesk subdomain that can be found in your account URL. For example, in https://{MY_SUBDOMAIN}.zendesk.com/, where MY_SUBDOMAIN is the value of your subdomain.
	Subdomain  string      `json:"subdomain"`
	sourceType ZendeskTalk `const:"zendesk-talk" json:"sourceType"`
}

func (s SourceZendeskTalk) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceZendeskTalk) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceZendeskTalk) GetCredentials() *SourceZendeskTalkAuthentication {
	if o == nil {
		return nil
	}
	return o.Credentials
}

func (o *SourceZendeskTalk) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}

func (o *SourceZendeskTalk) GetSubdomain() string {
	if o == nil {
		return ""
	}
	return o.Subdomain
}

func (o *SourceZendeskTalk) GetSourceType() ZendeskTalk {
	return ZendeskTalkZendeskTalk
}
