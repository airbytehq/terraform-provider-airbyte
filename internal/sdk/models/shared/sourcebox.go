// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type Box string

const (
	BoxBox Box = "box"
)

func (e Box) ToPointer() *Box {
	return &e
}
func (e *Box) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "box":
		*e = Box(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Box: %v", v)
	}
}

type SourceBox struct {
	ClientID     string  `json:"client_id"`
	ClientSecret string  `json:"client_secret"`
	User         float64 `json:"user"`
	sourceType   Box     `const:"box" json:"sourceType"`
}

func (s SourceBox) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceBox) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceBox) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourceBox) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

func (o *SourceBox) GetUser() float64 {
	if o == nil {
		return 0.0
	}
	return o.User
}

func (o *SourceBox) GetSourceType() Box {
	return BoxBox
}
