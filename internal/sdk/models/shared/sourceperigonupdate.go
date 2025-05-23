// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type SourcePerigonUpdate struct {
	// Your API key for authenticating with the Perigon API. Obtain it by creating an account at https://www.perigon.io/sign-up and verifying your email. The API key will be visible on your account dashboard.
	APIKey    string    `json:"api_key"`
	StartDate time.Time `json:"start_date"`
}

func (s SourcePerigonUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourcePerigonUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourcePerigonUpdate) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourcePerigonUpdate) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}
