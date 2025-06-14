// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type SourceFreeAgentConnectorUpdate struct {
	ClientID            string     `json:"client_id"`
	ClientRefreshToken2 string     `json:"client_refresh_token_2"`
	ClientSecret        string     `json:"client_secret"`
	PayrollYear         *float64   `json:"payroll_year,omitempty"`
	UpdatedSince        *time.Time `json:"updated_since,omitempty"`
}

func (s SourceFreeAgentConnectorUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceFreeAgentConnectorUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceFreeAgentConnectorUpdate) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourceFreeAgentConnectorUpdate) GetClientRefreshToken2() string {
	if o == nil {
		return ""
	}
	return o.ClientRefreshToken2
}

func (o *SourceFreeAgentConnectorUpdate) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

func (o *SourceFreeAgentConnectorUpdate) GetPayrollYear() *float64 {
	if o == nil {
		return nil
	}
	return o.PayrollYear
}

func (o *SourceFreeAgentConnectorUpdate) GetUpdatedSince() *time.Time {
	if o == nil {
		return nil
	}
	return o.UpdatedSince
}
