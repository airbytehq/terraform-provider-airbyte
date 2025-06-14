// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type SourceZapsignUpdate struct {
	// Your static API token for authentication. You can find it in your ZapSign account under the 'Settings' or 'API' section. For more details, refer to the [Getting Started](https://docs.zapsign.com.br/english/getting-started#how-do-i-get-my-api-token) guide.
	APIToken string `json:"api_token"`
	// The signer ids for signer stream
	SignerIds []any     `json:"signer_ids,omitempty"`
	StartDate time.Time `json:"start_date"`
}

func (s SourceZapsignUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceZapsignUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceZapsignUpdate) GetAPIToken() string {
	if o == nil {
		return ""
	}
	return o.APIToken
}

func (o *SourceZapsignUpdate) GetSignerIds() []any {
	if o == nil {
		return nil
	}
	return o.SignerIds
}

func (o *SourceZapsignUpdate) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}
