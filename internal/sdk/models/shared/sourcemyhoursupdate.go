// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type SourceMyHoursUpdate struct {
	// Your My Hours username
	Email string `json:"email"`
	// Pagination size used for retrieving logs in days
	LogsBatchSize *int64 `default:"30" json:"logs_batch_size"`
	// The password associated to the username
	Password string `json:"password"`
	// Start date for collecting time logs
	StartDate string `json:"start_date"`
}

func (s SourceMyHoursUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceMyHoursUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceMyHoursUpdate) GetEmail() string {
	if o == nil {
		return ""
	}
	return o.Email
}

func (o *SourceMyHoursUpdate) GetLogsBatchSize() *int64 {
	if o == nil {
		return nil
	}
	return o.LogsBatchSize
}

func (o *SourceMyHoursUpdate) GetPassword() string {
	if o == nil {
		return ""
	}
	return o.Password
}

func (o *SourceMyHoursUpdate) GetStartDate() string {
	if o == nil {
		return ""
	}
	return o.StartDate
}
