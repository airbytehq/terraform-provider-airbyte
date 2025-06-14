// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type Deputy string

const (
	DeputyDeputy Deputy = "deputy"
)

func (e Deputy) ToPointer() *Deputy {
	return &e
}
func (e *Deputy) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "deputy":
		*e = Deputy(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Deputy: %v", v)
	}
}

type SourceDeputy struct {
	APIKey string `json:"api_key"`
	// The base url for your deputy account to make API requests
	BaseURL    string `json:"base_url"`
	sourceType Deputy `const:"deputy" json:"sourceType"`
}

func (s SourceDeputy) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceDeputy) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceDeputy) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceDeputy) GetBaseURL() string {
	if o == nil {
		return ""
	}
	return o.BaseURL
}

func (o *SourceDeputy) GetSourceType() Deputy {
	return DeputyDeputy
}
