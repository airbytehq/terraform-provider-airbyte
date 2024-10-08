// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

// Filter for using in the `segments_experiences` stream
type Filter string

const (
	FilterTour     Filter = "tour"
	FilterSurvey   Filter = "survey"
	FilterLauncher Filter = "launcher"
)

func (e Filter) ToPointer() *Filter {
	return &e
}
func (e *Filter) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "tour":
		fallthrough
	case "survey":
		fallthrough
	case "launcher":
		*e = Filter(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Filter: %v", v)
	}
}

type SourceChameleonUpdate struct {
	APIKey  string    `json:"api_key"`
	EndDate time.Time `json:"end_date"`
	// Filter for using in the `segments_experiences` stream
	Filter *Filter `default:"tour" json:"filter"`
	// Max records per page limit
	Limit     *string   `default:"50" json:"limit"`
	StartDate time.Time `json:"start_date"`
}

func (s SourceChameleonUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceChameleonUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceChameleonUpdate) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceChameleonUpdate) GetEndDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.EndDate
}

func (o *SourceChameleonUpdate) GetFilter() *Filter {
	if o == nil {
		return nil
	}
	return o.Filter
}

func (o *SourceChameleonUpdate) GetLimit() *string {
	if o == nil {
		return nil
	}
	return o.Limit
}

func (o *SourceChameleonUpdate) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}
