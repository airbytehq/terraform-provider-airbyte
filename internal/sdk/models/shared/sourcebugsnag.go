// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type Bugsnag string

const (
	BugsnagBugsnag Bugsnag = "bugsnag"
)

func (e Bugsnag) ToPointer() *Bugsnag {
	return &e
}
func (e *Bugsnag) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "bugsnag":
		*e = Bugsnag(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Bugsnag: %v", v)
	}
}

type SourceBugsnag struct {
	// Personal auth token for accessing the Bugsnag API. Generate it in the My Account section of Bugsnag settings.
	AuthToken  string    `json:"auth_token"`
	StartDate  time.Time `json:"start_date"`
	sourceType Bugsnag   `const:"bugsnag" json:"sourceType"`
}

func (s SourceBugsnag) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceBugsnag) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceBugsnag) GetAuthToken() string {
	if o == nil {
		return ""
	}
	return o.AuthToken
}

func (o *SourceBugsnag) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}

func (o *SourceBugsnag) GetSourceType() Bugsnag {
	return BugsnagBugsnag
}
