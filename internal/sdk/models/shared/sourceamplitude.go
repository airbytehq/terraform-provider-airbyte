// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

// DataRegion - Amplitude data region server
type DataRegion string

const (
	DataRegionStandardServer    DataRegion = "Standard Server"
	DataRegionEuResidencyServer DataRegion = "EU Residency Server"
)

func (e DataRegion) ToPointer() *DataRegion {
	return &e
}
func (e *DataRegion) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "Standard Server":
		fallthrough
	case "EU Residency Server":
		*e = DataRegion(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DataRegion: %v", v)
	}
}

type Amplitude string

const (
	AmplitudeAmplitude Amplitude = "amplitude"
)

func (e Amplitude) ToPointer() *Amplitude {
	return &e
}
func (e *Amplitude) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "amplitude":
		*e = Amplitude(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Amplitude: %v", v)
	}
}

type SourceAmplitude struct {
	// According to <a href="https://amplitude.com/docs/apis/analytics/dashboard-rest#query-parameters">Amplitude documentation</a>, grouping by `Country` is optional. If you face issues fetching the stream or checking the connection please set this field to `False`.
	//
	ActiveUsersGroupByCountry *bool `default:"true" json:"active_users_group_by_country"`
	// Amplitude API Key. See the <a href="https://docs.airbyte.com/integrations/sources/amplitude#setup-guide">setup guide</a> for more information on how to obtain this key.
	APIKey string `json:"api_key"`
	// Amplitude data region server
	DataRegion *DataRegion `default:"Standard Server" json:"data_region"`
	// According to <a href="https://www.docs.developers.amplitude.com/analytics/apis/export-api/#considerations">Considerations</a> too large of a time range in te request can cause a timeout error. In this case, please provide a shorter time interval in hours.
	//
	RequestTimeRange *int64 `default:"24" json:"request_time_range"`
	// Amplitude Secret Key. See the <a href="https://docs.airbyte.com/integrations/sources/amplitude#setup-guide">setup guide</a> for more information on how to obtain this key.
	SecretKey string `json:"secret_key"`
	// UTC date and time in the format 2021-01-25T00:00:00Z. Any data before this date will not be replicated.
	StartDate  time.Time `json:"start_date"`
	sourceType Amplitude `const:"amplitude" json:"sourceType"`
}

func (s SourceAmplitude) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceAmplitude) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceAmplitude) GetActiveUsersGroupByCountry() *bool {
	if o == nil {
		return nil
	}
	return o.ActiveUsersGroupByCountry
}

func (o *SourceAmplitude) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceAmplitude) GetDataRegion() *DataRegion {
	if o == nil {
		return nil
	}
	return o.DataRegion
}

func (o *SourceAmplitude) GetRequestTimeRange() *int64 {
	if o == nil {
		return nil
	}
	return o.RequestTimeRange
}

func (o *SourceAmplitude) GetSecretKey() string {
	if o == nil {
		return ""
	}
	return o.SecretKey
}

func (o *SourceAmplitude) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}

func (o *SourceAmplitude) GetSourceType() Amplitude {
	return AmplitudeAmplitude
}
