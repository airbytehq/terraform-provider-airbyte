// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type Source100msUpdate struct {
	// The management token used for authenticating API requests. You can find or generate this token in your 100ms dashboard under the API section. Refer to the documentation at https://www.100ms.live/docs/concepts/v2/concepts/security-and-tokens#management-token-for-rest-api for more details.
	ManagementToken string    `json:"management_token"`
	StartDate       time.Time `json:"start_date"`
}

func (s Source100msUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *Source100msUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *Source100msUpdate) GetManagementToken() string {
	if o == nil {
		return ""
	}
	return o.ManagementToken
}

func (o *Source100msUpdate) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}
