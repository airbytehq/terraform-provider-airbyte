// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type Countercyclical string

const (
	CountercyclicalCountercyclical Countercyclical = "countercyclical"
)

func (e Countercyclical) ToPointer() *Countercyclical {
	return &e
}
func (e *Countercyclical) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "countercyclical":
		*e = Countercyclical(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Countercyclical: %v", v)
	}
}

type SourceCountercyclical struct {
	APIKey     string          `json:"api_key"`
	sourceType Countercyclical `const:"countercyclical" json:"sourceType"`
}

func (s SourceCountercyclical) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceCountercyclical) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceCountercyclical) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceCountercyclical) GetSourceType() Countercyclical {
	return CountercyclicalCountercyclical
}
