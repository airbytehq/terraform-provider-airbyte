// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type SourceTwitterUpdate struct {
	// App only Bearer Token. See the <a href="https://developer.twitter.com/en/docs/authentication/oauth-2-0/bearer-tokens">docs</a> for more information on how to obtain this token.
	APIKey string `json:"api_key"`
	// The end date for retrieving tweets must be a minimum of 10 seconds prior to the request time.
	EndDate *time.Time `json:"end_date,omitempty"`
	// Query for matching Tweets. You can learn how to build this query by reading <a href="https://developer.twitter.com/en/docs/twitter-api/tweets/search/integrate/build-a-query"> build a query guide </a>.
	Query string `json:"query"`
	// The start date for retrieving tweets cannot be more than 7 days in the past.
	StartDate *time.Time `json:"start_date,omitempty"`
}

func (s SourceTwitterUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceTwitterUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceTwitterUpdate) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceTwitterUpdate) GetEndDate() *time.Time {
	if o == nil {
		return nil
	}
	return o.EndDate
}

func (o *SourceTwitterUpdate) GetQuery() string {
	if o == nil {
		return ""
	}
	return o.Query
}

func (o *SourceTwitterUpdate) GetStartDate() *time.Time {
	if o == nil {
		return nil
	}
	return o.StartDate
}
