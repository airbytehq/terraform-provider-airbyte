// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

// SourceZohoInventoryUpdateDomain - The domain suffix for the Zoho Inventory API based on your data center location (e.g., 'com', 'eu', 'in', etc.)
type SourceZohoInventoryUpdateDomain string

const (
	SourceZohoInventoryUpdateDomainCom   SourceZohoInventoryUpdateDomain = "com"
	SourceZohoInventoryUpdateDomainIn    SourceZohoInventoryUpdateDomain = "in"
	SourceZohoInventoryUpdateDomainJp    SourceZohoInventoryUpdateDomain = "jp"
	SourceZohoInventoryUpdateDomainEu    SourceZohoInventoryUpdateDomain = "eu"
	SourceZohoInventoryUpdateDomainComAu SourceZohoInventoryUpdateDomain = "com.au"
	SourceZohoInventoryUpdateDomainCa    SourceZohoInventoryUpdateDomain = "ca"
	SourceZohoInventoryUpdateDomainComCn SourceZohoInventoryUpdateDomain = "com.cn"
	SourceZohoInventoryUpdateDomainSa    SourceZohoInventoryUpdateDomain = "sa"
)

func (e SourceZohoInventoryUpdateDomain) ToPointer() *SourceZohoInventoryUpdateDomain {
	return &e
}
func (e *SourceZohoInventoryUpdateDomain) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "com":
		fallthrough
	case "in":
		fallthrough
	case "jp":
		fallthrough
	case "eu":
		fallthrough
	case "com.au":
		fallthrough
	case "ca":
		fallthrough
	case "com.cn":
		fallthrough
	case "sa":
		*e = SourceZohoInventoryUpdateDomain(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceZohoInventoryUpdateDomain: %v", v)
	}
}

type SourceZohoInventoryUpdate struct {
	ClientID     string `json:"client_id"`
	ClientSecret string `json:"client_secret"`
	// The domain suffix for the Zoho Inventory API based on your data center location (e.g., 'com', 'eu', 'in', etc.)
	Domain       *SourceZohoInventoryUpdateDomain `default:"com" json:"domain"`
	RefreshToken string                           `json:"refresh_token"`
	StartDate    time.Time                        `json:"start_date"`
}

func (s SourceZohoInventoryUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceZohoInventoryUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceZohoInventoryUpdate) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourceZohoInventoryUpdate) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

func (o *SourceZohoInventoryUpdate) GetDomain() *SourceZohoInventoryUpdateDomain {
	if o == nil {
		return nil
	}
	return o.Domain
}

func (o *SourceZohoInventoryUpdate) GetRefreshToken() string {
	if o == nil {
		return ""
	}
	return o.RefreshToken
}

func (o *SourceZohoInventoryUpdate) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}
