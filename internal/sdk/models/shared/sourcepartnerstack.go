// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type Partnerstack string

const (
	PartnerstackPartnerstack Partnerstack = "partnerstack"
)

func (e Partnerstack) ToPointer() *Partnerstack {
	return &e
}
func (e *Partnerstack) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "partnerstack":
		*e = Partnerstack(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Partnerstack: %v", v)
	}
}

type SourcePartnerstack struct {
	// The Live Private Key for a Partnerstack account.
	PrivateKey string `json:"private_key"`
	// The Live Public Key for a Partnerstack account.
	PublicKey string `json:"public_key"`
	// UTC date and time in the format 2017-01-25T00:00:00Z. Any data before this date will not be replicated.
	StartDate  *string      `json:"start_date,omitempty"`
	sourceType Partnerstack `const:"partnerstack" json:"sourceType"`
}

func (s SourcePartnerstack) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourcePartnerstack) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourcePartnerstack) GetPrivateKey() string {
	if o == nil {
		return ""
	}
	return o.PrivateKey
}

func (o *SourcePartnerstack) GetPublicKey() string {
	if o == nil {
		return ""
	}
	return o.PublicKey
}

func (o *SourcePartnerstack) GetStartDate() *string {
	if o == nil {
		return nil
	}
	return o.StartDate
}

func (o *SourcePartnerstack) GetSourceType() Partnerstack {
	return PartnerstackPartnerstack
}
