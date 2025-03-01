// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type Tickettailor string

const (
	TickettailorTickettailor Tickettailor = "tickettailor"
)

func (e Tickettailor) ToPointer() *Tickettailor {
	return &e
}
func (e *Tickettailor) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "tickettailor":
		*e = Tickettailor(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Tickettailor: %v", v)
	}
}

type SourceTickettailor struct {
	// API key to use. Find it at https://www.getdrip.com/user/edit
	APIKey     string       `json:"api_key"`
	sourceType Tickettailor `const:"tickettailor" json:"sourceType"`
}

func (s SourceTickettailor) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceTickettailor) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceTickettailor) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceTickettailor) GetSourceType() Tickettailor {
	return TickettailorTickettailor
}
