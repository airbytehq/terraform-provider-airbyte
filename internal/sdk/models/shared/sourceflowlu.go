// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type Flowlu string

const (
	FlowluFlowlu Flowlu = "flowlu"
)

func (e Flowlu) ToPointer() *Flowlu {
	return &e
}
func (e *Flowlu) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "flowlu":
		*e = Flowlu(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Flowlu: %v", v)
	}
}

type SourceFlowlu struct {
	// The API key to use for authentication
	APIKey     string `json:"api_key"`
	Company    string `json:"company"`
	sourceType Flowlu `const:"flowlu" json:"sourceType"`
}

func (s SourceFlowlu) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceFlowlu) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceFlowlu) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceFlowlu) GetCompany() string {
	if o == nil {
		return ""
	}
	return o.Company
}

func (o *SourceFlowlu) GetSourceType() Flowlu {
	return FlowluFlowlu
}
