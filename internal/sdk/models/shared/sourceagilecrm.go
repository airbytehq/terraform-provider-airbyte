// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type Agilecrm string

const (
	AgilecrmAgilecrm Agilecrm = "agilecrm"
)

func (e Agilecrm) ToPointer() *Agilecrm {
	return &e
}
func (e *Agilecrm) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "agilecrm":
		*e = Agilecrm(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Agilecrm: %v", v)
	}
}

type SourceAgilecrm struct {
	// API key to use. Find it at Admin Settings -> API & Analytics -> API Key in your Agile CRM account.
	APIKey string `json:"api_key"`
	// The specific subdomain for your Agile CRM account
	Domain string `json:"domain"`
	// Your Agile CRM account email address. This is used as the username for authentication.
	Email      string   `json:"email"`
	sourceType Agilecrm `const:"agilecrm" json:"sourceType"`
}

func (s SourceAgilecrm) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceAgilecrm) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceAgilecrm) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceAgilecrm) GetDomain() string {
	if o == nil {
		return ""
	}
	return o.Domain
}

func (o *SourceAgilecrm) GetEmail() string {
	if o == nil {
		return ""
	}
	return o.Email
}

func (o *SourceAgilecrm) GetSourceType() Agilecrm {
	return AgilecrmAgilecrm
}
