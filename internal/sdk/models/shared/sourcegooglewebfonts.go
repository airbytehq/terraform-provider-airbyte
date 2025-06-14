// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type GoogleWebfonts string

const (
	GoogleWebfontsGoogleWebfonts GoogleWebfonts = "google-webfonts"
)

func (e GoogleWebfonts) ToPointer() *GoogleWebfonts {
	return &e
}
func (e *GoogleWebfonts) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "google-webfonts":
		*e = GoogleWebfonts(v)
		return nil
	default:
		return fmt.Errorf("invalid value for GoogleWebfonts: %v", v)
	}
}

type SourceGoogleWebfonts struct {
	// Optional, Available params- json, media, proto
	Alt *string `json:"alt,omitempty"`
	// API key is required to access google apis, For getting your's goto google console and generate api key for Webfonts
	APIKey string `json:"api_key"`
	// Optional, boolean type
	PrettyPrint *string `json:"prettyPrint,omitempty"`
	// Optional, to find how to sort
	Sort       *string        `json:"sort,omitempty"`
	sourceType GoogleWebfonts `const:"google-webfonts" json:"sourceType"`
}

func (s SourceGoogleWebfonts) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceGoogleWebfonts) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceGoogleWebfonts) GetAlt() *string {
	if o == nil {
		return nil
	}
	return o.Alt
}

func (o *SourceGoogleWebfonts) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceGoogleWebfonts) GetPrettyPrint() *string {
	if o == nil {
		return nil
	}
	return o.PrettyPrint
}

func (o *SourceGoogleWebfonts) GetSort() *string {
	if o == nil {
		return nil
	}
	return o.Sort
}

func (o *SourceGoogleWebfonts) GetSourceType() GoogleWebfonts {
	return GoogleWebfontsGoogleWebfonts
}
