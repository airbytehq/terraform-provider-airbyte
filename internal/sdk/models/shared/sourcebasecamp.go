// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type Basecamp string

const (
	BasecampBasecamp Basecamp = "basecamp"
)

func (e Basecamp) ToPointer() *Basecamp {
	return &e
}
func (e *Basecamp) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "basecamp":
		*e = Basecamp(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Basecamp: %v", v)
	}
}

type SourceBasecamp struct {
	AccountID           float64   `json:"account_id"`
	ClientID            string    `json:"client_id"`
	ClientRefreshToken2 string    `json:"client_refresh_token_2"`
	ClientSecret        string    `json:"client_secret"`
	StartDate           time.Time `json:"start_date"`
	sourceType          Basecamp  `const:"basecamp" json:"sourceType"`
}

func (s SourceBasecamp) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceBasecamp) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceBasecamp) GetAccountID() float64 {
	if o == nil {
		return 0.0
	}
	return o.AccountID
}

func (o *SourceBasecamp) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourceBasecamp) GetClientRefreshToken2() string {
	if o == nil {
		return ""
	}
	return o.ClientRefreshToken2
}

func (o *SourceBasecamp) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

func (o *SourceBasecamp) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}

func (o *SourceBasecamp) GetSourceType() Basecamp {
	return BasecampBasecamp
}
