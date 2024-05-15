// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type Applications struct {
	AppAPIKey string  `json:"app_api_key"`
	AppID     string  `json:"app_id"`
	AppName   *string `json:"app_name,omitempty"`
}

func (o *Applications) GetAppAPIKey() string {
	if o == nil {
		return ""
	}
	return o.AppAPIKey
}

func (o *Applications) GetAppID() string {
	if o == nil {
		return ""
	}
	return o.AppID
}

func (o *Applications) GetAppName() *string {
	if o == nil {
		return nil
	}
	return o.AppName
}

type SourceOnesignalUpdate struct {
	// Applications keys, see the <a href="https://documentation.onesignal.com/docs/accounts-and-keys">docs</a> for more information on how to obtain this data
	Applications []Applications `json:"applications"`
	// Comma-separated list of names and the value (sum/count) for the returned outcome data. See the <a href="https://documentation.onesignal.com/reference/view-outcomes">docs</a> for more details
	OutcomeNames string `json:"outcome_names"`
	// The date from which you'd like to replicate data for OneSignal API, in the format YYYY-MM-DDT00:00:00Z. All data generated after this date will be replicated.
	StartDate time.Time `json:"start_date"`
	// OneSignal User Auth Key, see the <a href="https://documentation.onesignal.com/docs/accounts-and-keys#user-auth-key">docs</a> for more information on how to obtain this key.
	UserAuthKey string `json:"user_auth_key"`
}

func (s SourceOnesignalUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceOnesignalUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceOnesignalUpdate) GetApplications() []Applications {
	if o == nil {
		return []Applications{}
	}
	return o.Applications
}

func (o *SourceOnesignalUpdate) GetOutcomeNames() string {
	if o == nil {
		return ""
	}
	return o.OutcomeNames
}

func (o *SourceOnesignalUpdate) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}

func (o *SourceOnesignalUpdate) GetUserAuthKey() string {
	if o == nil {
		return ""
	}
	return o.UserAuthKey
}