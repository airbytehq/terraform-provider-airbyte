// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type SourceNylasAPIServer string

const (
	SourceNylasAPIServerUs SourceNylasAPIServer = "us"
	SourceNylasAPIServerEu SourceNylasAPIServer = "eu"
)

func (e SourceNylasAPIServer) ToPointer() *SourceNylasAPIServer {
	return &e
}
func (e *SourceNylasAPIServer) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "us":
		fallthrough
	case "eu":
		*e = SourceNylasAPIServer(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceNylasAPIServer: %v", v)
	}
}

type Nylas string

const (
	NylasNylas Nylas = "nylas"
)

func (e Nylas) ToPointer() *Nylas {
	return &e
}
func (e *Nylas) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "nylas":
		*e = Nylas(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Nylas: %v", v)
	}
}

type SourceNylas struct {
	APIKey     string               `json:"api_key"`
	APIServer  SourceNylasAPIServer `json:"api_server"`
	EndDate    time.Time            `json:"end_date"`
	sourceType Nylas                `const:"nylas" json:"sourceType"`
	StartDate  time.Time            `json:"start_date"`
}

func (s SourceNylas) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceNylas) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceNylas) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceNylas) GetAPIServer() SourceNylasAPIServer {
	if o == nil {
		return SourceNylasAPIServer("")
	}
	return o.APIServer
}

func (o *SourceNylas) GetEndDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.EndDate
}

func (o *SourceNylas) GetSourceType() Nylas {
	return NylasNylas
}

func (o *SourceNylas) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}
