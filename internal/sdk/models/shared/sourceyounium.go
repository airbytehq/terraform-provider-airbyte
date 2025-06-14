// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type Younium string

const (
	YouniumYounium Younium = "younium"
)

func (e Younium) ToPointer() *Younium {
	return &e
}
func (e *Younium) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "younium":
		*e = Younium(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Younium: %v", v)
	}
}

type SourceYounium struct {
	// Legal Entity that data should be pulled from
	LegalEntity string `json:"legal_entity"`
	// Account password for younium account API key
	Password string `json:"password"`
	// Property defining if connector is used against playground or production environment
	Playground *bool `default:"false" json:"playground"`
	// Username for Younium account
	Username   string  `json:"username"`
	sourceType Younium `const:"younium" json:"sourceType"`
}

func (s SourceYounium) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceYounium) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceYounium) GetLegalEntity() string {
	if o == nil {
		return ""
	}
	return o.LegalEntity
}

func (o *SourceYounium) GetPassword() string {
	if o == nil {
		return ""
	}
	return o.Password
}

func (o *SourceYounium) GetPlayground() *bool {
	if o == nil {
		return nil
	}
	return o.Playground
}

func (o *SourceYounium) GetUsername() string {
	if o == nil {
		return ""
	}
	return o.Username
}

func (o *SourceYounium) GetSourceType() Younium {
	return YouniumYounium
}
