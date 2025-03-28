// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type Savvycal string

const (
	SavvycalSavvycal Savvycal = "savvycal"
)

func (e Savvycal) ToPointer() *Savvycal {
	return &e
}
func (e *Savvycal) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "savvycal":
		*e = Savvycal(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Savvycal: %v", v)
	}
}

type SourceSavvycal struct {
	// Go to SavvyCal → Settings → Developer → Personal Tokens and make a new token. Then, copy the private key. https://savvycal.com/developers
	APIKey     string   `json:"api_key"`
	sourceType Savvycal `const:"savvycal" json:"sourceType"`
}

func (s SourceSavvycal) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceSavvycal) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceSavvycal) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceSavvycal) GetSourceType() Savvycal {
	return SavvycalSavvycal
}
