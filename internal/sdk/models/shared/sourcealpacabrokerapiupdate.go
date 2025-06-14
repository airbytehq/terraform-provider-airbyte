// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

// SourceAlpacaBrokerAPIUpdateEnvironment - The trading environment, either 'live', 'paper' or 'broker-api.sandbox'.
type SourceAlpacaBrokerAPIUpdateEnvironment string

const (
	SourceAlpacaBrokerAPIUpdateEnvironmentAPI              SourceAlpacaBrokerAPIUpdateEnvironment = "api"
	SourceAlpacaBrokerAPIUpdateEnvironmentPaperAPI         SourceAlpacaBrokerAPIUpdateEnvironment = "paper-api"
	SourceAlpacaBrokerAPIUpdateEnvironmentBrokerAPISandbox SourceAlpacaBrokerAPIUpdateEnvironment = "broker-api.sandbox"
)

func (e SourceAlpacaBrokerAPIUpdateEnvironment) ToPointer() *SourceAlpacaBrokerAPIUpdateEnvironment {
	return &e
}
func (e *SourceAlpacaBrokerAPIUpdateEnvironment) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "api":
		fallthrough
	case "paper-api":
		fallthrough
	case "broker-api.sandbox":
		*e = SourceAlpacaBrokerAPIUpdateEnvironment(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceAlpacaBrokerAPIUpdateEnvironment: %v", v)
	}
}

type SourceAlpacaBrokerAPIUpdate struct {
	// The trading environment, either 'live', 'paper' or 'broker-api.sandbox'.
	Environment *SourceAlpacaBrokerAPIUpdateEnvironment `default:"broker-api.sandbox" json:"environment"`
	// Limit for each response objects
	Limit *string `default:"20" json:"limit"`
	// Your Alpaca API Secret Key. You can find this in the Alpaca developer web console under your account settings.
	Password  *string   `json:"password,omitempty"`
	StartDate time.Time `json:"start_date"`
	// API Key ID for the alpaca market
	Username string `json:"username"`
}

func (s SourceAlpacaBrokerAPIUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceAlpacaBrokerAPIUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceAlpacaBrokerAPIUpdate) GetEnvironment() *SourceAlpacaBrokerAPIUpdateEnvironment {
	if o == nil {
		return nil
	}
	return o.Environment
}

func (o *SourceAlpacaBrokerAPIUpdate) GetLimit() *string {
	if o == nil {
		return nil
	}
	return o.Limit
}

func (o *SourceAlpacaBrokerAPIUpdate) GetPassword() *string {
	if o == nil {
		return nil
	}
	return o.Password
}

func (o *SourceAlpacaBrokerAPIUpdate) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}

func (o *SourceAlpacaBrokerAPIUpdate) GetUsername() string {
	if o == nil {
		return ""
	}
	return o.Username
}
