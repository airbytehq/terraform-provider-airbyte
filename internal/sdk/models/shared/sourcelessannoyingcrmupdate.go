// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type SourceLessAnnoyingCrmUpdate struct {
	// API key to use. Manage and create your API keys on the Programmer API settings page at https://account.lessannoyingcrm.com/app/Settings/Api.
	APIKey    string    `json:"api_key"`
	StartDate time.Time `json:"start_date"`
}

func (s SourceLessAnnoyingCrmUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceLessAnnoyingCrmUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceLessAnnoyingCrmUpdate) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceLessAnnoyingCrmUpdate) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}
