// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type ZohoDesk string

const (
	ZohoDeskZohoDesk ZohoDesk = "zoho-desk"
)

func (e ZohoDesk) ToPointer() *ZohoDesk {
	return &e
}
func (e *ZohoDesk) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "zoho-desk":
		*e = ZohoDesk(v)
		return nil
	default:
		return fmt.Errorf("invalid value for ZohoDesk: %v", v)
	}
}

type SourceZohoDesk struct {
	ClientID             string   `json:"client_id"`
	ClientSecret         string   `json:"client_secret"`
	IncludeCustomDomain  *bool    `json:"include_custom_domain,omitempty"`
	RefreshToken         string   `json:"refresh_token"`
	TokenRefreshEndpoint string   `json:"token_refresh_endpoint"`
	sourceType           ZohoDesk `const:"zoho-desk" json:"sourceType"`
}

func (s SourceZohoDesk) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceZohoDesk) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceZohoDesk) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourceZohoDesk) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

func (o *SourceZohoDesk) GetIncludeCustomDomain() *bool {
	if o == nil {
		return nil
	}
	return o.IncludeCustomDomain
}

func (o *SourceZohoDesk) GetRefreshToken() string {
	if o == nil {
		return ""
	}
	return o.RefreshToken
}

func (o *SourceZohoDesk) GetTokenRefreshEndpoint() string {
	if o == nil {
		return ""
	}
	return o.TokenRefreshEndpoint
}

func (o *SourceZohoDesk) GetSourceType() ZohoDesk {
	return ZohoDeskZohoDesk
}
