// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type Cimis string

const (
	CimisCimis Cimis = "cimis"
)

func (e Cimis) ToPointer() *Cimis {
	return &e
}
func (e *Cimis) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "cimis":
		*e = Cimis(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Cimis: %v", v)
	}
}

type SourceCimisTargetsType string

const (
	SourceCimisTargetsTypeWsnStationNumbers        SourceCimisTargetsType = "WSN station numbers"
	SourceCimisTargetsTypeCaliforniaZipCodes       SourceCimisTargetsType = "California zip codes"
	SourceCimisTargetsTypeDecimalDegreeCoordinates SourceCimisTargetsType = "decimal-degree coordinates"
	SourceCimisTargetsTypeStreetAddresses          SourceCimisTargetsType = "street addresses"
)

func (e SourceCimisTargetsType) ToPointer() *SourceCimisTargetsType {
	return &e
}
func (e *SourceCimisTargetsType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "WSN station numbers":
		fallthrough
	case "California zip codes":
		fallthrough
	case "decimal-degree coordinates":
		fallthrough
	case "street addresses":
		*e = SourceCimisTargetsType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceCimisTargetsType: %v", v)
	}
}

type SourceCimisUnitOfMeasure string

const (
	SourceCimisUnitOfMeasureE SourceCimisUnitOfMeasure = "E"
	SourceCimisUnitOfMeasureM SourceCimisUnitOfMeasure = "M"
)

func (e SourceCimisUnitOfMeasure) ToPointer() *SourceCimisUnitOfMeasure {
	return &e
}
func (e *SourceCimisUnitOfMeasure) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "E":
		fallthrough
	case "M":
		*e = SourceCimisUnitOfMeasure(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceCimisUnitOfMeasure: %v", v)
	}
}

type SourceCimis struct {
	APIKey          string                    `json:"api_key"`
	DailyDataItems  []any                     `json:"daily_data_items,omitempty"`
	EndDate         time.Time                 `json:"end_date"`
	HourlyDataItems []any                     `json:"hourly_data_items,omitempty"`
	sourceType      Cimis                     `const:"cimis" json:"sourceType"`
	StartDate       time.Time                 `json:"start_date"`
	Targets         []any                     `json:"targets"`
	TargetsType     SourceCimisTargetsType    `json:"targets_type"`
	UnitOfMeasure   *SourceCimisUnitOfMeasure `json:"unit_of_measure,omitempty"`
}

func (s SourceCimis) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceCimis) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceCimis) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceCimis) GetDailyDataItems() []any {
	if o == nil {
		return nil
	}
	return o.DailyDataItems
}

func (o *SourceCimis) GetEndDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.EndDate
}

func (o *SourceCimis) GetHourlyDataItems() []any {
	if o == nil {
		return nil
	}
	return o.HourlyDataItems
}

func (o *SourceCimis) GetSourceType() Cimis {
	return CimisCimis
}

func (o *SourceCimis) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}

func (o *SourceCimis) GetTargets() []any {
	if o == nil {
		return []any{}
	}
	return o.Targets
}

func (o *SourceCimis) GetTargetsType() SourceCimisTargetsType {
	if o == nil {
		return SourceCimisTargetsType("")
	}
	return o.TargetsType
}

func (o *SourceCimis) GetUnitOfMeasure() *SourceCimisUnitOfMeasure {
	if o == nil {
		return nil
	}
	return o.UnitOfMeasure
}
