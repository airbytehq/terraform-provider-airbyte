// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type BreezyHr string

const (
	BreezyHrBreezyHr BreezyHr = "breezy-hr"
)

func (e BreezyHr) ToPointer() *BreezyHr {
	return &e
}
func (e *BreezyHr) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "breezy-hr":
		*e = BreezyHr(v)
		return nil
	default:
		return fmt.Errorf("invalid value for BreezyHr: %v", v)
	}
}

type SourceBreezyHr struct {
	APIKey     string   `json:"api_key"`
	CompanyID  string   `json:"company_id"`
	sourceType BreezyHr `const:"breezy-hr" json:"sourceType"`
}

func (s SourceBreezyHr) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceBreezyHr) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceBreezyHr) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceBreezyHr) GetCompanyID() string {
	if o == nil {
		return ""
	}
	return o.CompanyID
}

func (o *SourceBreezyHr) GetSourceType() BreezyHr {
	return BreezyHrBreezyHr
}
