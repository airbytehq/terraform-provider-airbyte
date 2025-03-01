// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type Payfit string

const (
	PayfitPayfit Payfit = "payfit"
)

func (e Payfit) ToPointer() *Payfit {
	return &e
}
func (e *Payfit) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "payfit":
		*e = Payfit(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Payfit: %v", v)
	}
}

type SourcePayfit struct {
	APIKey     string `json:"api_key"`
	CompanyID  string `json:"company_id"`
	sourceType Payfit `const:"payfit" json:"sourceType"`
}

func (s SourcePayfit) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourcePayfit) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourcePayfit) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourcePayfit) GetCompanyID() string {
	if o == nil {
		return ""
	}
	return o.CompanyID
}

func (o *SourcePayfit) GetSourceType() Payfit {
	return PayfitPayfit
}
