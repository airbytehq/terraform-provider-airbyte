// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type Klaviyo string

const (
	KlaviyoKlaviyo Klaviyo = "klaviyo"
)

func (e Klaviyo) ToPointer() *Klaviyo {
	return &e
}
func (e *Klaviyo) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "klaviyo":
		*e = Klaviyo(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Klaviyo: %v", v)
	}
}

type SourceKlaviyo struct {
	// Klaviyo API Key. See our <a href="https://docs.airbyte.com/integrations/sources/klaviyo">docs</a> if you need help finding this key.
	APIKey string `json:"api_key"`
	// Certain streams like the profiles stream can retrieve predictive analytics data from Klaviyo's API. However, at high volume, this can lead to service availability issues on the API which can be improved by not fetching this field. WARNING: Enabling this setting will stop the  "predictive_analytics" column from being populated in your downstream destination.
	DisableFetchingPredictiveAnalytics *bool   `json:"disable_fetching_predictive_analytics,omitempty"`
	sourceType                         Klaviyo `const:"klaviyo" json:"sourceType"`
	// UTC date and time in the format 2017-01-25T00:00:00Z. Any data before this date will not be replicated. This field is optional - if not provided, all data will be replicated.
	StartDate *time.Time `json:"start_date,omitempty"`
}

func (s SourceKlaviyo) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceKlaviyo) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceKlaviyo) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceKlaviyo) GetDisableFetchingPredictiveAnalytics() *bool {
	if o == nil {
		return nil
	}
	return o.DisableFetchingPredictiveAnalytics
}

func (o *SourceKlaviyo) GetSourceType() Klaviyo {
	return KlaviyoKlaviyo
}

func (o *SourceKlaviyo) GetStartDate() *time.Time {
	if o == nil {
		return nil
	}
	return o.StartDate
}
