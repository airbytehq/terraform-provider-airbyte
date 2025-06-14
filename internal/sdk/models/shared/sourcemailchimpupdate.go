// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"errors"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type SourceMailchimpUpdateSchemasAuthType string

const (
	SourceMailchimpUpdateSchemasAuthTypeApikey SourceMailchimpUpdateSchemasAuthType = "apikey"
)

func (e SourceMailchimpUpdateSchemasAuthType) ToPointer() *SourceMailchimpUpdateSchemasAuthType {
	return &e
}
func (e *SourceMailchimpUpdateSchemasAuthType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "apikey":
		*e = SourceMailchimpUpdateSchemasAuthType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceMailchimpUpdateSchemasAuthType: %v", v)
	}
}

type SourceMailchimpUpdateAPIKey struct {
	// Mailchimp API Key. See the <a href="https://docs.airbyte.com/integrations/sources/mailchimp">docs</a> for information on how to generate this key.
	Apikey   string                               `json:"apikey"`
	authType SourceMailchimpUpdateSchemasAuthType `const:"apikey" json:"auth_type"`
}

func (s SourceMailchimpUpdateAPIKey) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceMailchimpUpdateAPIKey) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceMailchimpUpdateAPIKey) GetApikey() string {
	if o == nil {
		return ""
	}
	return o.Apikey
}

func (o *SourceMailchimpUpdateAPIKey) GetAuthType() SourceMailchimpUpdateSchemasAuthType {
	return SourceMailchimpUpdateSchemasAuthTypeApikey
}

type SourceMailchimpUpdateAuthType string

const (
	SourceMailchimpUpdateAuthTypeOauth20 SourceMailchimpUpdateAuthType = "oauth2.0"
)

func (e SourceMailchimpUpdateAuthType) ToPointer() *SourceMailchimpUpdateAuthType {
	return &e
}
func (e *SourceMailchimpUpdateAuthType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "oauth2.0":
		*e = SourceMailchimpUpdateAuthType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceMailchimpUpdateAuthType: %v", v)
	}
}

type SourceMailchimpUpdateOAuth20 struct {
	// An access token generated using the above client ID and secret.
	AccessToken string                        `json:"access_token"`
	authType    SourceMailchimpUpdateAuthType `const:"oauth2.0" json:"auth_type"`
	// The Client ID of your OAuth application.
	ClientID *string `json:"client_id,omitempty"`
	// The Client Secret of your OAuth application.
	ClientSecret *string `json:"client_secret,omitempty"`
}

func (s SourceMailchimpUpdateOAuth20) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceMailchimpUpdateOAuth20) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceMailchimpUpdateOAuth20) GetAccessToken() string {
	if o == nil {
		return ""
	}
	return o.AccessToken
}

func (o *SourceMailchimpUpdateOAuth20) GetAuthType() SourceMailchimpUpdateAuthType {
	return SourceMailchimpUpdateAuthTypeOauth20
}

func (o *SourceMailchimpUpdateOAuth20) GetClientID() *string {
	if o == nil {
		return nil
	}
	return o.ClientID
}

func (o *SourceMailchimpUpdateOAuth20) GetClientSecret() *string {
	if o == nil {
		return nil
	}
	return o.ClientSecret
}

type SourceMailchimpUpdateAuthenticationType string

const (
	SourceMailchimpUpdateAuthenticationTypeSourceMailchimpUpdateOAuth20 SourceMailchimpUpdateAuthenticationType = "source-mailchimp-update_OAuth2.0"
	SourceMailchimpUpdateAuthenticationTypeSourceMailchimpUpdateAPIKey  SourceMailchimpUpdateAuthenticationType = "source-mailchimp-update_API Key"
)

type SourceMailchimpUpdateAuthentication struct {
	SourceMailchimpUpdateOAuth20 *SourceMailchimpUpdateOAuth20 `queryParam:"inline"`
	SourceMailchimpUpdateAPIKey  *SourceMailchimpUpdateAPIKey  `queryParam:"inline"`

	Type SourceMailchimpUpdateAuthenticationType
}

func CreateSourceMailchimpUpdateAuthenticationSourceMailchimpUpdateOAuth20(sourceMailchimpUpdateOAuth20 SourceMailchimpUpdateOAuth20) SourceMailchimpUpdateAuthentication {
	typ := SourceMailchimpUpdateAuthenticationTypeSourceMailchimpUpdateOAuth20

	return SourceMailchimpUpdateAuthentication{
		SourceMailchimpUpdateOAuth20: &sourceMailchimpUpdateOAuth20,
		Type:                         typ,
	}
}

func CreateSourceMailchimpUpdateAuthenticationSourceMailchimpUpdateAPIKey(sourceMailchimpUpdateAPIKey SourceMailchimpUpdateAPIKey) SourceMailchimpUpdateAuthentication {
	typ := SourceMailchimpUpdateAuthenticationTypeSourceMailchimpUpdateAPIKey

	return SourceMailchimpUpdateAuthentication{
		SourceMailchimpUpdateAPIKey: &sourceMailchimpUpdateAPIKey,
		Type:                        typ,
	}
}

func (u *SourceMailchimpUpdateAuthentication) UnmarshalJSON(data []byte) error {

	var sourceMailchimpUpdateAPIKey SourceMailchimpUpdateAPIKey = SourceMailchimpUpdateAPIKey{}
	if err := utils.UnmarshalJSON(data, &sourceMailchimpUpdateAPIKey, "", true, true); err == nil {
		u.SourceMailchimpUpdateAPIKey = &sourceMailchimpUpdateAPIKey
		u.Type = SourceMailchimpUpdateAuthenticationTypeSourceMailchimpUpdateAPIKey
		return nil
	}

	var sourceMailchimpUpdateOAuth20 SourceMailchimpUpdateOAuth20 = SourceMailchimpUpdateOAuth20{}
	if err := utils.UnmarshalJSON(data, &sourceMailchimpUpdateOAuth20, "", true, true); err == nil {
		u.SourceMailchimpUpdateOAuth20 = &sourceMailchimpUpdateOAuth20
		u.Type = SourceMailchimpUpdateAuthenticationTypeSourceMailchimpUpdateOAuth20
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for SourceMailchimpUpdateAuthentication", string(data))
}

func (u SourceMailchimpUpdateAuthentication) MarshalJSON() ([]byte, error) {
	if u.SourceMailchimpUpdateOAuth20 != nil {
		return utils.MarshalJSON(u.SourceMailchimpUpdateOAuth20, "", true)
	}

	if u.SourceMailchimpUpdateAPIKey != nil {
		return utils.MarshalJSON(u.SourceMailchimpUpdateAPIKey, "", true)
	}

	return nil, errors.New("could not marshal union type SourceMailchimpUpdateAuthentication: all fields are null")
}

type SourceMailchimpUpdate struct {
	Credentials *SourceMailchimpUpdateAuthentication `json:"credentials,omitempty"`
	// The date from which you want to start syncing data for Incremental streams. Only records that have been created or modified since this date will be synced. If left blank, all data will by synced.
	StartDate *time.Time `json:"start_date,omitempty"`
}

func (s SourceMailchimpUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceMailchimpUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceMailchimpUpdate) GetCredentials() *SourceMailchimpUpdateAuthentication {
	if o == nil {
		return nil
	}
	return o.Credentials
}

func (o *SourceMailchimpUpdate) GetStartDate() *time.Time {
	if o == nil {
		return nil
	}
	return o.StartDate
}
