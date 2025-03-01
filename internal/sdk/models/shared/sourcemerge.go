// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type Merge string

const (
	MergeMerge Merge = "merge"
)

func (e Merge) ToPointer() *Merge {
	return &e
}
func (e *Merge) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "merge":
		*e = Merge(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Merge: %v", v)
	}
}

type SourceMerge struct {
	// Link your other integrations with account credentials on accounts section to get account token (ref - https://app.merge.dev/linked-accounts/accounts)
	AccountToken string `json:"account_token"`
	// API token can be seen at  https://app.merge.dev/keys
	APIToken string `json:"api_token"`
	// Date time filter for incremental filter, Specify which date to extract from.
	StartDate  time.Time `json:"start_date"`
	sourceType Merge     `const:"merge" json:"sourceType"`
}

func (s SourceMerge) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceMerge) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceMerge) GetAccountToken() string {
	if o == nil {
		return ""
	}
	return o.AccountToken
}

func (o *SourceMerge) GetAPIToken() string {
	if o == nil {
		return ""
	}
	return o.APIToken
}

func (o *SourceMerge) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}

func (o *SourceMerge) GetSourceType() Merge {
	return MergeMerge
}
