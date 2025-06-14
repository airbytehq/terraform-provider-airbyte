// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/types"
)

type SourceMercadoAdsUpdate struct {
	ClientID           string `json:"client_id"`
	ClientRefreshToken string `json:"client_refresh_token"`
	ClientSecret       string `json:"client_secret"`
	// Cannot exceed 90 days from current day for Product Ads
	EndDate      *types.Date `json:"end_date,omitempty"`
	LookbackDays *float64    `default:"7" json:"lookback_days"`
	// Cannot exceed 90 days from current day for Product Ads, and 90 days from "End Date" on Brand and Display Ads
	StartDate *types.Date `json:"start_date,omitempty"`
}

func (s SourceMercadoAdsUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceMercadoAdsUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceMercadoAdsUpdate) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourceMercadoAdsUpdate) GetClientRefreshToken() string {
	if o == nil {
		return ""
	}
	return o.ClientRefreshToken
}

func (o *SourceMercadoAdsUpdate) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

func (o *SourceMercadoAdsUpdate) GetEndDate() *types.Date {
	if o == nil {
		return nil
	}
	return o.EndDate
}

func (o *SourceMercadoAdsUpdate) GetLookbackDays() *float64 {
	if o == nil {
		return nil
	}
	return o.LookbackDays
}

func (o *SourceMercadoAdsUpdate) GetStartDate() *types.Date {
	if o == nil {
		return nil
	}
	return o.StartDate
}
