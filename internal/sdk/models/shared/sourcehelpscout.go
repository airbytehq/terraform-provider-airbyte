// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type HelpScout string

const (
	HelpScoutHelpScout HelpScout = "help-scout"
)

func (e HelpScout) ToPointer() *HelpScout {
	return &e
}
func (e *HelpScout) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "help-scout":
		*e = HelpScout(v)
		return nil
	default:
		return fmt.Errorf("invalid value for HelpScout: %v", v)
	}
}

type SourceHelpScout struct {
	ClientID     string    `json:"client_id"`
	ClientSecret string    `json:"client_secret"`
	StartDate    time.Time `json:"start_date"`
	sourceType   HelpScout `const:"help-scout" json:"sourceType"`
}

func (s SourceHelpScout) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceHelpScout) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceHelpScout) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourceHelpScout) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

func (o *SourceHelpScout) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}

func (o *SourceHelpScout) GetSourceType() HelpScout {
	return HelpScoutHelpScout
}
