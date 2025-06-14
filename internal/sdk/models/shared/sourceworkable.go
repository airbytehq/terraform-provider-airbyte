// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type Workable string

const (
	WorkableWorkable Workable = "workable"
)

func (e Workable) ToPointer() *Workable {
	return &e
}
func (e *Workable) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "workable":
		*e = Workable(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Workable: %v", v)
	}
}

type SourceWorkable struct {
	// Your Workable account subdomain, e.g. https://your_account_subdomain.workable.com.
	AccountSubdomain string `json:"account_subdomain"`
	// Your Workable API Key. See <a href="https://workable.readme.io/reference/generate-an-access-token">here</a>.
	APIKey string `json:"api_key"`
	// Get data that was created since this date (format: YYYYMMDDTHHMMSSZ).
	StartDate  string   `json:"start_date"`
	sourceType Workable `const:"workable" json:"sourceType"`
}

func (s SourceWorkable) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceWorkable) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceWorkable) GetAccountSubdomain() string {
	if o == nil {
		return ""
	}
	return o.AccountSubdomain
}

func (o *SourceWorkable) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceWorkable) GetStartDate() string {
	if o == nil {
		return ""
	}
	return o.StartDate
}

func (o *SourceWorkable) GetSourceType() Workable {
	return WorkableWorkable
}
