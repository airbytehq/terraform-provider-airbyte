// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type Secoda string

const (
	SecodaSecoda Secoda = "secoda"
)

func (e Secoda) ToPointer() *Secoda {
	return &e
}
func (e *Secoda) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "secoda":
		*e = Secoda(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Secoda: %v", v)
	}
}

type SourceSecoda struct {
	// Your API Access Key. See <a href="https://docs.secoda.co/secoda-api/authentication">here</a>. The key is case sensitive.
	APIKey     string `json:"api_key"`
	sourceType Secoda `const:"secoda" json:"sourceType"`
}

func (s SourceSecoda) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceSecoda) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceSecoda) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceSecoda) GetSourceType() Secoda {
	return SecodaSecoda
}
