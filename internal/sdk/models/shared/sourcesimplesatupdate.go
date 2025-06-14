// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type SourceSimplesatUpdate struct {
	APIKey string `json:"api_key"`
	// Date till when the sync should end
	EndDate *time.Time `json:"end_date,omitempty"`
	// Date from when the sync should start
	StartDate *time.Time `json:"start_date,omitempty"`
}

func (s SourceSimplesatUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceSimplesatUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceSimplesatUpdate) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceSimplesatUpdate) GetEndDate() *time.Time {
	if o == nil {
		return nil
	}
	return o.EndDate
}

func (o *SourceSimplesatUpdate) GetStartDate() *time.Time {
	if o == nil {
		return nil
	}
	return o.StartDate
}
