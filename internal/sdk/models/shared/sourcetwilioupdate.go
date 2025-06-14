// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type SourceTwilioUpdate struct {
	// Twilio account SID
	AccountSid string `json:"account_sid"`
	// Twilio Auth Token.
	AuthToken string `json:"auth_token"`
	// How far into the past to look for records. (in minutes)
	LookbackWindow *int64 `default:"0" json:"lookback_window"`
	// UTC date and time in the format 2020-10-01T00:00:00Z. Any data before this date will not be replicated.
	StartDate time.Time `json:"start_date"`
}

func (s SourceTwilioUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceTwilioUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceTwilioUpdate) GetAccountSid() string {
	if o == nil {
		return ""
	}
	return o.AccountSid
}

func (o *SourceTwilioUpdate) GetAuthToken() string {
	if o == nil {
		return ""
	}
	return o.AuthToken
}

func (o *SourceTwilioUpdate) GetLookbackWindow() *int64 {
	if o == nil {
		return nil
	}
	return o.LookbackWindow
}

func (o *SourceTwilioUpdate) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}
