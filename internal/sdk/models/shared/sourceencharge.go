// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type Encharge string

const (
	EnchargeEncharge Encharge = "encharge"
)

func (e Encharge) ToPointer() *Encharge {
	return &e
}
func (e *Encharge) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "encharge":
		*e = Encharge(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Encharge: %v", v)
	}
}

type SourceEncharge struct {
	// The API key to use for authentication
	APIKey     string   `json:"api_key"`
	sourceType Encharge `const:"encharge" json:"sourceType"`
}

func (s SourceEncharge) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceEncharge) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceEncharge) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceEncharge) GetSourceType() Encharge {
	return EnchargeEncharge
}
