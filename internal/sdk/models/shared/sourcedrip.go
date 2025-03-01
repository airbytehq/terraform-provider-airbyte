// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type Drip string

const (
	DripDrip Drip = "drip"
)

func (e Drip) ToPointer() *Drip {
	return &e
}
func (e *Drip) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "drip":
		*e = Drip(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Drip: %v", v)
	}
}

type SourceDrip struct {
	// API key to use. Find it at https://www.getdrip.com/user/edit
	APIKey     string `json:"api_key"`
	sourceType Drip   `const:"drip" json:"sourceType"`
}

func (s SourceDrip) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceDrip) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceDrip) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceDrip) GetSourceType() Drip {
	return DripDrip
}
