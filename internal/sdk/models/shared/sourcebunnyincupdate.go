// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type SourceBunnyIncUpdate struct {
	Apikey string `json:"apikey"`
	// The subdomain specific to your Bunny account or service.
	Subdomain string     `json:"subdomain"`
	StartDate *time.Time `json:"start_date,omitempty"`
}

func (s SourceBunnyIncUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceBunnyIncUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceBunnyIncUpdate) GetApikey() string {
	if o == nil {
		return ""
	}
	return o.Apikey
}

func (o *SourceBunnyIncUpdate) GetSubdomain() string {
	if o == nil {
		return ""
	}
	return o.Subdomain
}

func (o *SourceBunnyIncUpdate) GetStartDate() *time.Time {
	if o == nil {
		return nil
	}
	return o.StartDate
}
