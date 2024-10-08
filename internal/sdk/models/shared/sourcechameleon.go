// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

// SourceChameleonFilter - Filter for using in the `segments_experiences` stream
type SourceChameleonFilter string

const (
	SourceChameleonFilterTour     SourceChameleonFilter = "tour"
	SourceChameleonFilterSurvey   SourceChameleonFilter = "survey"
	SourceChameleonFilterLauncher SourceChameleonFilter = "launcher"
)

func (e SourceChameleonFilter) ToPointer() *SourceChameleonFilter {
	return &e
}
func (e *SourceChameleonFilter) UnmarshalJSON(data []byte) error {
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
		*e = SourceChameleonFilter(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceChameleonFilter: %v", v)
	}
}

type Chameleon string

const (
	ChameleonChameleon Chameleon = "chameleon"
)

func (e Chameleon) ToPointer() *Chameleon {
	return &e
}
func (e *Chameleon) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "chameleon":
		*e = Chameleon(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Chameleon: %v", v)
	}
}

type SourceChameleon struct {
	APIKey  string    `json:"api_key"`
	EndDate time.Time `json:"end_date"`
	// Filter for using in the `segments_experiences` stream
	Filter *SourceChameleonFilter `default:"tour" json:"filter"`
	// Max records per page limit
	Limit      *string   `default:"50" json:"limit"`
	sourceType Chameleon `const:"chameleon" json:"sourceType"`
	StartDate  time.Time `json:"start_date"`
}

func (s SourceChameleon) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceChameleon) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceChameleon) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceChameleon) GetEndDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.EndDate
}

func (o *SourceChameleon) GetFilter() *SourceChameleonFilter {
	if o == nil {
		return nil
	}
	return o.Filter
}

func (o *SourceChameleon) GetLimit() *string {
	if o == nil {
		return nil
	}
	return o.Limit
}

func (o *SourceChameleon) GetSourceType() Chameleon {
	return ChameleonChameleon
}

func (o *SourceChameleon) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}
