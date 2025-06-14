// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type SourcePaypalTransactionUpdate struct {
	// The Client ID of your Paypal developer application.
	ClientID string `json:"client_id"`
	// The Client Secret of your Paypal developer application.
	ClientSecret string `json:"client_secret"`
	// Start Date parameter for the list dispute endpoint in <a href=\"https://datatracker.ietf.org/doc/html/rfc3339#section-5.6\">ISO format</a>. This Start Date must be in range within 180 days before present time, and requires ONLY 3 miliseconds(mandatory). If you don't use this option, it defaults to a start date set 180 days in the past.
	DisputeStartDate *time.Time `json:"dispute_start_date,omitempty"`
	// End Date for data extraction in <a href=\"https://datatracker.ietf.org/doc/html/rfc3339#section-5.6\">ISO format</a>. This can be help you select specific range of time, mainly for test purposes  or data integrity tests. When this is not used, now_utc() is used by the streams. This does not apply to Disputes and Product streams.
	EndDate *time.Time `json:"end_date,omitempty"`
	// Determines whether to use the sandbox or production environment.
	IsSandbox *bool `default:"false" json:"is_sandbox"`
	// The key to refresh the expired access token.
	RefreshToken *string `json:"refresh_token,omitempty"`
	// Start Date for data extraction in <a href=\"https://datatracker.ietf.org/doc/html/rfc3339#section-5.6\">ISO format</a>. Date must be in range from 3 years till 12 hrs before present time.
	StartDate time.Time `json:"start_date"`
	// The number of days per request. Must be a number between 1 and 31.
	TimeWindow *int64 `default:"7" json:"time_window"`
}

func (s SourcePaypalTransactionUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourcePaypalTransactionUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourcePaypalTransactionUpdate) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourcePaypalTransactionUpdate) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

func (o *SourcePaypalTransactionUpdate) GetDisputeStartDate() *time.Time {
	if o == nil {
		return nil
	}
	return o.DisputeStartDate
}

func (o *SourcePaypalTransactionUpdate) GetEndDate() *time.Time {
	if o == nil {
		return nil
	}
	return o.EndDate
}

func (o *SourcePaypalTransactionUpdate) GetIsSandbox() *bool {
	if o == nil {
		return nil
	}
	return o.IsSandbox
}

func (o *SourcePaypalTransactionUpdate) GetRefreshToken() *string {
	if o == nil {
		return nil
	}
	return o.RefreshToken
}

func (o *SourcePaypalTransactionUpdate) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}

func (o *SourcePaypalTransactionUpdate) GetTimeWindow() *int64 {
	if o == nil {
		return nil
	}
	return o.TimeWindow
}
