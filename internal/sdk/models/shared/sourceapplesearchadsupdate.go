// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type SourceAppleSearchAdsUpdate struct {
	// The identifier of the organization that owns the campaign. Your Org Id is the same as your account in the Apple Search Ads UI.
	OrgID int64 `json:"org_id"`
	// Data is retrieved until that date (included)
	EndDate *string `json:"end_date,omitempty"`
	// A user identifier for the token request. See <a href="https://developer.apple.com/documentation/apple_search_ads/implementing_oauth_for_the_apple_search_ads_api">here</a>
	ClientID string `json:"client_id"`
	// Start getting data from that date.
	StartDate string `json:"start_date"`
	// A string that authenticates the user’s setup request. See <a href="https://developer.apple.com/documentation/apple_search_ads/implementing_oauth_for_the_apple_search_ads_api">here</a>
	ClientSecret string `json:"client_secret"`
	// Apple Search Ads uses a 30-day attribution window. However, you may consider smaller values in order to shorten sync durations, at the cost of missing late data attributions.
	LookbackWindow *int64 `default:"30" json:"lookback_window"`
	// This factor factor determines the delay increase factor between retryable failures. Valid values are integers between 1 and 20.
	BackoffFactor *int64 `default:"5" json:"backoff_factor"`
}

func (s SourceAppleSearchAdsUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceAppleSearchAdsUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceAppleSearchAdsUpdate) GetOrgID() int64 {
	if o == nil {
		return 0
	}
	return o.OrgID
}

func (o *SourceAppleSearchAdsUpdate) GetEndDate() *string {
	if o == nil {
		return nil
	}
	return o.EndDate
}

func (o *SourceAppleSearchAdsUpdate) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourceAppleSearchAdsUpdate) GetStartDate() string {
	if o == nil {
		return ""
	}
	return o.StartDate
}

func (o *SourceAppleSearchAdsUpdate) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

func (o *SourceAppleSearchAdsUpdate) GetLookbackWindow() *int64 {
	if o == nil {
		return nil
	}
	return o.LookbackWindow
}

func (o *SourceAppleSearchAdsUpdate) GetBackoffFactor() *int64 {
	if o == nil {
		return nil
	}
	return o.BackoffFactor
}
