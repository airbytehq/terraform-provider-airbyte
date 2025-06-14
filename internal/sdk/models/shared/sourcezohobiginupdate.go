// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

// SourceZohoBiginUpdateDataCenter - The data center where the Bigin account's resources are hosted
type SourceZohoBiginUpdateDataCenter string

const (
	SourceZohoBiginUpdateDataCenterCom   SourceZohoBiginUpdateDataCenter = "com"
	SourceZohoBiginUpdateDataCenterComAu SourceZohoBiginUpdateDataCenter = "com.au"
	SourceZohoBiginUpdateDataCenterEu    SourceZohoBiginUpdateDataCenter = "eu"
	SourceZohoBiginUpdateDataCenterIn    SourceZohoBiginUpdateDataCenter = "in"
	SourceZohoBiginUpdateDataCenterComCn SourceZohoBiginUpdateDataCenter = "com.cn"
	SourceZohoBiginUpdateDataCenterJp    SourceZohoBiginUpdateDataCenter = "jp"
)

func (e SourceZohoBiginUpdateDataCenter) ToPointer() *SourceZohoBiginUpdateDataCenter {
	return &e
}
func (e *SourceZohoBiginUpdateDataCenter) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "com":
		fallthrough
	case "com.au":
		fallthrough
	case "eu":
		fallthrough
	case "in":
		fallthrough
	case "com.cn":
		fallthrough
	case "jp":
		*e = SourceZohoBiginUpdateDataCenter(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceZohoBiginUpdateDataCenter: %v", v)
	}
}

type SourceZohoBiginUpdate struct {
	ClientID           string `json:"client_id"`
	ClientRefreshToken string `json:"client_refresh_token"`
	ClientSecret       string `json:"client_secret"`
	// The data center where the Bigin account's resources are hosted
	DataCenter *SourceZohoBiginUpdateDataCenter `default:"com" json:"data_center"`
	ModuleName string                           `json:"module_name"`
}

func (s SourceZohoBiginUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceZohoBiginUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceZohoBiginUpdate) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourceZohoBiginUpdate) GetClientRefreshToken() string {
	if o == nil {
		return ""
	}
	return o.ClientRefreshToken
}

func (o *SourceZohoBiginUpdate) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

func (o *SourceZohoBiginUpdate) GetDataCenter() *SourceZohoBiginUpdateDataCenter {
	if o == nil {
		return nil
	}
	return o.DataCenter
}

func (o *SourceZohoBiginUpdate) GetModuleName() string {
	if o == nil {
		return ""
	}
	return o.ModuleName
}
