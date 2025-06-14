// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type SourceSurveymonkeyUpdateAuthMethod string

const (
	SourceSurveymonkeyUpdateAuthMethodOauth20 SourceSurveymonkeyUpdateAuthMethod = "oauth2.0"
)

func (e SourceSurveymonkeyUpdateAuthMethod) ToPointer() *SourceSurveymonkeyUpdateAuthMethod {
	return &e
}
func (e *SourceSurveymonkeyUpdateAuthMethod) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "oauth2.0":
		*e = SourceSurveymonkeyUpdateAuthMethod(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceSurveymonkeyUpdateAuthMethod: %v", v)
	}
}

// SourceSurveymonkeyUpdateSurveyMonkeyAuthorizationMethod - The authorization method to use to retrieve data from SurveyMonkey
type SourceSurveymonkeyUpdateSurveyMonkeyAuthorizationMethod struct {
	// Access Token for making authenticated requests. See the <a href="https://docs.airbyte.io/integrations/sources/surveymonkey">docs</a> for information on how to generate this key.
	AccessToken string                             `json:"access_token"`
	authMethod  SourceSurveymonkeyUpdateAuthMethod `const:"oauth2.0" json:"auth_method"`
	// The Client ID of the SurveyMonkey developer application.
	ClientID *string `json:"client_id,omitempty"`
	// The Client Secret of the SurveyMonkey developer application.
	ClientSecret *string `json:"client_secret,omitempty"`
}

func (s SourceSurveymonkeyUpdateSurveyMonkeyAuthorizationMethod) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceSurveymonkeyUpdateSurveyMonkeyAuthorizationMethod) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceSurveymonkeyUpdateSurveyMonkeyAuthorizationMethod) GetAccessToken() string {
	if o == nil {
		return ""
	}
	return o.AccessToken
}

func (o *SourceSurveymonkeyUpdateSurveyMonkeyAuthorizationMethod) GetAuthMethod() SourceSurveymonkeyUpdateAuthMethod {
	return SourceSurveymonkeyUpdateAuthMethodOauth20
}

func (o *SourceSurveymonkeyUpdateSurveyMonkeyAuthorizationMethod) GetClientID() *string {
	if o == nil {
		return nil
	}
	return o.ClientID
}

func (o *SourceSurveymonkeyUpdateSurveyMonkeyAuthorizationMethod) GetClientSecret() *string {
	if o == nil {
		return nil
	}
	return o.ClientSecret
}

// SourceSurveymonkeyUpdateOriginDatacenterOfTheSurveyMonkeyAccount - Depending on the originating datacenter of the SurveyMonkey account, the API access URL may be different.
type SourceSurveymonkeyUpdateOriginDatacenterOfTheSurveyMonkeyAccount string

const (
	SourceSurveymonkeyUpdateOriginDatacenterOfTheSurveyMonkeyAccountUsa    SourceSurveymonkeyUpdateOriginDatacenterOfTheSurveyMonkeyAccount = "USA"
	SourceSurveymonkeyUpdateOriginDatacenterOfTheSurveyMonkeyAccountEurope SourceSurveymonkeyUpdateOriginDatacenterOfTheSurveyMonkeyAccount = "Europe"
	SourceSurveymonkeyUpdateOriginDatacenterOfTheSurveyMonkeyAccountCanada SourceSurveymonkeyUpdateOriginDatacenterOfTheSurveyMonkeyAccount = "Canada"
)

func (e SourceSurveymonkeyUpdateOriginDatacenterOfTheSurveyMonkeyAccount) ToPointer() *SourceSurveymonkeyUpdateOriginDatacenterOfTheSurveyMonkeyAccount {
	return &e
}
func (e *SourceSurveymonkeyUpdateOriginDatacenterOfTheSurveyMonkeyAccount) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "USA":
		fallthrough
	case "Europe":
		fallthrough
	case "Canada":
		*e = SourceSurveymonkeyUpdateOriginDatacenterOfTheSurveyMonkeyAccount(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceSurveymonkeyUpdateOriginDatacenterOfTheSurveyMonkeyAccount: %v", v)
	}
}

type SourceSurveymonkeyUpdate struct {
	// The authorization method to use to retrieve data from SurveyMonkey
	Credentials SourceSurveymonkeyUpdateSurveyMonkeyAuthorizationMethod `json:"credentials"`
	// Depending on the originating datacenter of the SurveyMonkey account, the API access URL may be different.
	Origin *SourceSurveymonkeyUpdateOriginDatacenterOfTheSurveyMonkeyAccount `default:"USA" json:"origin"`
	// UTC date and time in the format 2017-01-25T00:00:00Z. Any data before this date will not be replicated.
	StartDate time.Time `json:"start_date"`
	// IDs of the surveys from which you'd like to replicate data. If left empty, data from all boards to which you have access will be replicated.
	SurveyIds []string `json:"survey_ids,omitempty"`
}

func (s SourceSurveymonkeyUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceSurveymonkeyUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceSurveymonkeyUpdate) GetCredentials() SourceSurveymonkeyUpdateSurveyMonkeyAuthorizationMethod {
	if o == nil {
		return SourceSurveymonkeyUpdateSurveyMonkeyAuthorizationMethod{}
	}
	return o.Credentials
}

func (o *SourceSurveymonkeyUpdate) GetOrigin() *SourceSurveymonkeyUpdateOriginDatacenterOfTheSurveyMonkeyAccount {
	if o == nil {
		return nil
	}
	return o.Origin
}

func (o *SourceSurveymonkeyUpdate) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}

func (o *SourceSurveymonkeyUpdate) GetSurveyIds() []string {
	if o == nil {
		return nil
	}
	return o.SurveyIds
}
