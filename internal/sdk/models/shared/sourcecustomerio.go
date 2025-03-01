// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type CustomerIo string

const (
	CustomerIoCustomerIo CustomerIo = "customer-io"
)

func (e CustomerIo) ToPointer() *CustomerIo {
	return &e
}
func (e *CustomerIo) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "customer-io":
		*e = CustomerIo(v)
		return nil
	default:
		return fmt.Errorf("invalid value for CustomerIo: %v", v)
	}
}

type SourceCustomerIo struct {
	AppAPIKey  string     `json:"app_api_key"`
	sourceType CustomerIo `const:"customer-io" json:"sourceType"`
}

func (s SourceCustomerIo) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceCustomerIo) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceCustomerIo) GetAppAPIKey() string {
	if o == nil {
		return ""
	}
	return o.AppAPIKey
}

func (o *SourceCustomerIo) GetSourceType() CustomerIo {
	return CustomerIoCustomerIo
}
