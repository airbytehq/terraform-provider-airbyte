// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/pkg/utils"
	"time"
)

type Sendgrid string

const (
	SendgridSendgrid Sendgrid = "sendgrid"
)

func (e Sendgrid) ToPointer() *Sendgrid {
	return &e
}

func (e *Sendgrid) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "sendgrid":
		*e = Sendgrid(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Sendgrid: %v", v)
	}
}

type SourceSendgrid struct {
	// API Key, use <a href="https://app.sendgrid.com/settings/api_keys/">admin</a> to generate this key.
	Apikey     string   `json:"apikey"`
	sourceType Sendgrid `const:"sendgrid" json:"sourceType"`
	// Start time in ISO8601 format. Any data before this time point will not be replicated.
	StartTime *time.Time `json:"start_time,omitempty"`
}

func (s SourceSendgrid) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceSendgrid) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceSendgrid) GetApikey() string {
	if o == nil {
		return ""
	}
	return o.Apikey
}

func (o *SourceSendgrid) GetSourceType() Sendgrid {
	return SendgridSendgrid
}

func (o *SourceSendgrid) GetStartTime() *time.Time {
	if o == nil {
		return nil
	}
	return o.StartTime
}
