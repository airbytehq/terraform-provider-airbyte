// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type Planhat string

const (
	PlanhatPlanhat Planhat = "planhat"
)

func (e Planhat) ToPointer() *Planhat {
	return &e
}
func (e *Planhat) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "planhat":
		*e = Planhat(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Planhat: %v", v)
	}
}

type SourcePlanhat struct {
	// Your Planhat <a href="https://docs.planhat.com/#authentication">API Access Token</a>
	APIToken   string  `json:"api_token"`
	sourceType Planhat `const:"planhat" json:"sourceType"`
}

func (s SourcePlanhat) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourcePlanhat) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourcePlanhat) GetAPIToken() string {
	if o == nil {
		return ""
	}
	return o.APIToken
}

func (o *SourcePlanhat) GetSourceType() Planhat {
	return PlanhatPlanhat
}
