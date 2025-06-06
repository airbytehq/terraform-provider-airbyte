// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type CaptainData string

const (
	CaptainDataCaptainData CaptainData = "captain-data"
)

func (e CaptainData) ToPointer() *CaptainData {
	return &e
}
func (e *CaptainData) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "captain-data":
		*e = CaptainData(v)
		return nil
	default:
		return fmt.Errorf("invalid value for CaptainData: %v", v)
	}
}

type SourceCaptainData struct {
	// Your Captain Data project API key.
	APIKey string `json:"api_key"`
	// Your Captain Data project uuid.
	ProjectUID string      `json:"project_uid"`
	sourceType CaptainData `const:"captain-data" json:"sourceType"`
}

func (s SourceCaptainData) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceCaptainData) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceCaptainData) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceCaptainData) GetProjectUID() string {
	if o == nil {
		return ""
	}
	return o.ProjectUID
}

func (o *SourceCaptainData) GetSourceType() CaptainData {
	return CaptainDataCaptainData
}
