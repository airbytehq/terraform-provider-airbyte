// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type SourceYoutubeAnalyticsAuthenticateViaOAuth20 struct {
	AdditionalProperties any `additionalProperties:"true" json:"-"`
	// The Client ID of your developer application
	ClientID string `json:"client_id"`
	// The client secret of your developer application
	ClientSecret string `json:"client_secret"`
	// A refresh token generated using the above client ID and secret
	RefreshToken string `json:"refresh_token"`
}

func (s SourceYoutubeAnalyticsAuthenticateViaOAuth20) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceYoutubeAnalyticsAuthenticateViaOAuth20) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceYoutubeAnalyticsAuthenticateViaOAuth20) GetAdditionalProperties() any {
	if o == nil {
		return nil
	}
	return o.AdditionalProperties
}

func (o *SourceYoutubeAnalyticsAuthenticateViaOAuth20) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourceYoutubeAnalyticsAuthenticateViaOAuth20) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

func (o *SourceYoutubeAnalyticsAuthenticateViaOAuth20) GetRefreshToken() string {
	if o == nil {
		return ""
	}
	return o.RefreshToken
}

type YoutubeAnalytics string

const (
	YoutubeAnalyticsYoutubeAnalytics YoutubeAnalytics = "youtube-analytics"
)

func (e YoutubeAnalytics) ToPointer() *YoutubeAnalytics {
	return &e
}
func (e *YoutubeAnalytics) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "youtube-analytics":
		*e = YoutubeAnalytics(v)
		return nil
	default:
		return fmt.Errorf("invalid value for YoutubeAnalytics: %v", v)
	}
}

type SourceYoutubeAnalytics struct {
	Credentials SourceYoutubeAnalyticsAuthenticateViaOAuth20 `json:"credentials"`
	sourceType  YoutubeAnalytics                             `const:"youtube-analytics" json:"sourceType"`
}

func (s SourceYoutubeAnalytics) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceYoutubeAnalytics) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceYoutubeAnalytics) GetCredentials() SourceYoutubeAnalyticsAuthenticateViaOAuth20 {
	if o == nil {
		return SourceYoutubeAnalyticsAuthenticateViaOAuth20{}
	}
	return o.Credentials
}

func (o *SourceYoutubeAnalytics) GetSourceType() YoutubeAnalytics {
	return YoutubeAnalyticsYoutubeAnalytics
}
