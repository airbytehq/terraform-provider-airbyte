// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type SourceMendeleyUpdate struct {
	// Could be found at `https://dev.mendeley.com/myapps.html`
	ClientID string `json:"client_id"`
	// Use cURL or Postman with the OAuth 2.0 Authorization tab. Set the Auth URL to https://api.mendeley.com/oauth/authorize, the Token URL to https://api.mendeley.com/oauth/token, and use all as the scope.
	ClientRefreshToken string `json:"client_refresh_token"`
	// Could be found at `https://dev.mendeley.com/myapps.html`
	ClientSecret string `json:"client_secret"`
	// The name parameter for institutions search
	NameForInstitution *string `default:"City University" json:"name_for_institution"`
	// Query for catalog search
	QueryForCatalog *string   `default:"Polar Bear" json:"query_for_catalog"`
	StartDate       time.Time `json:"start_date"`
}

func (s SourceMendeleyUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceMendeleyUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceMendeleyUpdate) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourceMendeleyUpdate) GetClientRefreshToken() string {
	if o == nil {
		return ""
	}
	return o.ClientRefreshToken
}

func (o *SourceMendeleyUpdate) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

func (o *SourceMendeleyUpdate) GetNameForInstitution() *string {
	if o == nil {
		return nil
	}
	return o.NameForInstitution
}

func (o *SourceMendeleyUpdate) GetQueryForCatalog() *string {
	if o == nil {
		return nil
	}
	return o.QueryForCatalog
}

func (o *SourceMendeleyUpdate) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}
