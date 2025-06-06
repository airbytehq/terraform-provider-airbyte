// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type Squarespace string

const (
	SquarespaceSquarespace Squarespace = "squarespace"
)

func (e Squarespace) ToPointer() *Squarespace {
	return &e
}
func (e *Squarespace) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "squarespace":
		*e = Squarespace(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Squarespace: %v", v)
	}
}

type SourceSquarespace struct {
	// API key to use. Find it at https://developers.squarespace.com/commerce-apis/authentication-and-permissions
	APIKey string `json:"api_key"`
	// Any data before this date will not be replicated.
	StartDate  time.Time   `json:"start_date"`
	sourceType Squarespace `const:"squarespace" json:"sourceType"`
}

func (s SourceSquarespace) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceSquarespace) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceSquarespace) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceSquarespace) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}

func (o *SourceSquarespace) GetSourceType() Squarespace {
	return SquarespaceSquarespace
}
