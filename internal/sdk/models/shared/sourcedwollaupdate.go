// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

// SourceDwollaUpdateEnvironment - The environment for the Dwolla API, either 'api-sandbox' or 'api'.
type SourceDwollaUpdateEnvironment string

const (
	SourceDwollaUpdateEnvironmentAPI        SourceDwollaUpdateEnvironment = "api"
	SourceDwollaUpdateEnvironmentAPISandbox SourceDwollaUpdateEnvironment = "api-sandbox"
)

func (e SourceDwollaUpdateEnvironment) ToPointer() *SourceDwollaUpdateEnvironment {
	return &e
}
func (e *SourceDwollaUpdateEnvironment) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "api":
		fallthrough
	case "api-sandbox":
		*e = SourceDwollaUpdateEnvironment(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceDwollaUpdateEnvironment: %v", v)
	}
}

type SourceDwollaUpdate struct {
	ClientID     string `json:"client_id"`
	ClientSecret string `json:"client_secret"`
	// The environment for the Dwolla API, either 'api-sandbox' or 'api'.
	Environment *SourceDwollaUpdateEnvironment `default:"api" json:"environment"`
	StartDate   time.Time                      `json:"start_date"`
}

func (s SourceDwollaUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceDwollaUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceDwollaUpdate) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourceDwollaUpdate) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

func (o *SourceDwollaUpdate) GetEnvironment() *SourceDwollaUpdateEnvironment {
	if o == nil {
		return nil
	}
	return o.Environment
}

func (o *SourceDwollaUpdate) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}
