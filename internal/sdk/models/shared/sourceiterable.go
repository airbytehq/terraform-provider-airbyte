// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type Iterable string

const (
	IterableIterable Iterable = "iterable"
)

func (e Iterable) ToPointer() *Iterable {
	return &e
}
func (e *Iterable) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "iterable":
		*e = Iterable(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Iterable: %v", v)
	}
}

type SourceIterable struct {
	// Iterable API Key. See the <a href=\"https://docs.airbyte.com/integrations/sources/iterable\">docs</a>  for more information on how to obtain this key.
	APIKey string `json:"api_key"`
	// The date from which you'd like to replicate data for Iterable, in the format YYYY-MM-DDT00:00:00Z.  All data generated after this date will be replicated.
	StartDate  time.Time `json:"start_date"`
	sourceType Iterable  `const:"iterable" json:"sourceType"`
}

func (s SourceIterable) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceIterable) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceIterable) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceIterable) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}

func (o *SourceIterable) GetSourceType() Iterable {
	return IterableIterable
}
