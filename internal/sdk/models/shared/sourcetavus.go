// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type Tavus string

const (
	TavusTavus Tavus = "tavus"
)

func (e Tavus) ToPointer() *Tavus {
	return &e
}
func (e *Tavus) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "tavus":
		*e = Tavus(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Tavus: %v", v)
	}
}

type SourceTavus struct {
	// Your Tavus API key. You can find this in your Tavus account settings or API dashboard.
	APIKey     string    `json:"api_key"`
	StartDate  time.Time `json:"start_date"`
	sourceType Tavus     `const:"tavus" json:"sourceType"`
}

func (s SourceTavus) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceTavus) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceTavus) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceTavus) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}

func (o *SourceTavus) GetSourceType() Tavus {
	return TavusTavus
}
