// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type Sendpulse string

const (
	SendpulseSendpulse Sendpulse = "sendpulse"
)

func (e Sendpulse) ToPointer() *Sendpulse {
	return &e
}
func (e *Sendpulse) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "sendpulse":
		*e = Sendpulse(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Sendpulse: %v", v)
	}
}

type SourceSendpulse struct {
	ClientID     string    `json:"client_id"`
	ClientSecret string    `json:"client_secret"`
	sourceType   Sendpulse `const:"sendpulse" json:"sourceType"`
}

func (s SourceSendpulse) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceSendpulse) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceSendpulse) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourceSendpulse) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

func (o *SourceSendpulse) GetSourceType() Sendpulse {
	return SendpulseSendpulse
}
