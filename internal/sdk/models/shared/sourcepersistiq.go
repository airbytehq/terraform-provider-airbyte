// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type Persistiq string

const (
	PersistiqPersistiq Persistiq = "persistiq"
)

func (e Persistiq) ToPointer() *Persistiq {
	return &e
}
func (e *Persistiq) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "persistiq":
		*e = Persistiq(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Persistiq: %v", v)
	}
}

type SourcePersistiq struct {
	// PersistIq API Key. See the <a href="https://apidocs.persistiq.com/#authentication">docs</a> for more information on where to find that key.
	APIKey     string    `json:"api_key"`
	sourceType Persistiq `const:"persistiq" json:"sourceType"`
}

func (s SourcePersistiq) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourcePersistiq) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourcePersistiq) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourcePersistiq) GetSourceType() Persistiq {
	return PersistiqPersistiq
}
