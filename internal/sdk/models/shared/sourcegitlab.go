// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"errors"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type SourceGitlabSchemasAuthType string

const (
	SourceGitlabSchemasAuthTypeAccessToken SourceGitlabSchemasAuthType = "access_token"
)

func (e SourceGitlabSchemasAuthType) ToPointer() *SourceGitlabSchemasAuthType {
	return &e
}
func (e *SourceGitlabSchemasAuthType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "access_token":
		*e = SourceGitlabSchemasAuthType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceGitlabSchemasAuthType: %v", v)
	}
}

type PrivateToken struct {
	// Log into your Gitlab account and then generate a personal Access Token.
	AccessToken string                       `json:"access_token"`
	authType    *SourceGitlabSchemasAuthType `const:"access_token" json:"auth_type,omitempty"`
}

func (p PrivateToken) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(p, "", false)
}

func (p *PrivateToken) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &p, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *PrivateToken) GetAccessToken() string {
	if o == nil {
		return ""
	}
	return o.AccessToken
}

func (o *PrivateToken) GetAuthType() *SourceGitlabSchemasAuthType {
	return SourceGitlabSchemasAuthTypeAccessToken.ToPointer()
}

type SourceGitlabAuthType string

const (
	SourceGitlabAuthTypeOauth20 SourceGitlabAuthType = "oauth2.0"
)

func (e SourceGitlabAuthType) ToPointer() *SourceGitlabAuthType {
	return &e
}
func (e *SourceGitlabAuthType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "oauth2.0":
		*e = SourceGitlabAuthType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceGitlabAuthType: %v", v)
	}
}

type SourceGitlabOAuth20 struct {
	// Access Token for making authenticated requests.
	AccessToken string                `json:"access_token"`
	authType    *SourceGitlabAuthType `const:"oauth2.0" json:"auth_type,omitempty"`
	// The API ID of the Gitlab developer application.
	ClientID string `json:"client_id"`
	// The API Secret the Gitlab developer application.
	ClientSecret string `json:"client_secret"`
	// The key to refresh the expired access_token.
	RefreshToken string `json:"refresh_token"`
	// The date-time when the access token should be refreshed.
	TokenExpiryDate time.Time `json:"token_expiry_date"`
}

func (s SourceGitlabOAuth20) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceGitlabOAuth20) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceGitlabOAuth20) GetAccessToken() string {
	if o == nil {
		return ""
	}
	return o.AccessToken
}

func (o *SourceGitlabOAuth20) GetAuthType() *SourceGitlabAuthType {
	return SourceGitlabAuthTypeOauth20.ToPointer()
}

func (o *SourceGitlabOAuth20) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourceGitlabOAuth20) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

func (o *SourceGitlabOAuth20) GetRefreshToken() string {
	if o == nil {
		return ""
	}
	return o.RefreshToken
}

func (o *SourceGitlabOAuth20) GetTokenExpiryDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.TokenExpiryDate
}

type SourceGitlabAuthorizationMethodType string

const (
	SourceGitlabAuthorizationMethodTypeSourceGitlabOAuth20 SourceGitlabAuthorizationMethodType = "source-gitlab_OAuth2.0"
	SourceGitlabAuthorizationMethodTypePrivateToken        SourceGitlabAuthorizationMethodType = "Private Token"
)

type SourceGitlabAuthorizationMethod struct {
	SourceGitlabOAuth20 *SourceGitlabOAuth20 `queryParam:"inline"`
	PrivateToken        *PrivateToken        `queryParam:"inline"`

	Type SourceGitlabAuthorizationMethodType
}

func CreateSourceGitlabAuthorizationMethodSourceGitlabOAuth20(sourceGitlabOAuth20 SourceGitlabOAuth20) SourceGitlabAuthorizationMethod {
	typ := SourceGitlabAuthorizationMethodTypeSourceGitlabOAuth20

	return SourceGitlabAuthorizationMethod{
		SourceGitlabOAuth20: &sourceGitlabOAuth20,
		Type:                typ,
	}
}

func CreateSourceGitlabAuthorizationMethodPrivateToken(privateToken PrivateToken) SourceGitlabAuthorizationMethod {
	typ := SourceGitlabAuthorizationMethodTypePrivateToken

	return SourceGitlabAuthorizationMethod{
		PrivateToken: &privateToken,
		Type:         typ,
	}
}

func (u *SourceGitlabAuthorizationMethod) UnmarshalJSON(data []byte) error {

	var privateToken PrivateToken = PrivateToken{}
	if err := utils.UnmarshalJSON(data, &privateToken, "", true, true); err == nil {
		u.PrivateToken = &privateToken
		u.Type = SourceGitlabAuthorizationMethodTypePrivateToken
		return nil
	}

	var sourceGitlabOAuth20 SourceGitlabOAuth20 = SourceGitlabOAuth20{}
	if err := utils.UnmarshalJSON(data, &sourceGitlabOAuth20, "", true, true); err == nil {
		u.SourceGitlabOAuth20 = &sourceGitlabOAuth20
		u.Type = SourceGitlabAuthorizationMethodTypeSourceGitlabOAuth20
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for SourceGitlabAuthorizationMethod", string(data))
}

func (u SourceGitlabAuthorizationMethod) MarshalJSON() ([]byte, error) {
	if u.SourceGitlabOAuth20 != nil {
		return utils.MarshalJSON(u.SourceGitlabOAuth20, "", true)
	}

	if u.PrivateToken != nil {
		return utils.MarshalJSON(u.PrivateToken, "", true)
	}

	return nil, errors.New("could not marshal union type SourceGitlabAuthorizationMethod: all fields are null")
}

type Gitlab string

const (
	GitlabGitlab Gitlab = "gitlab"
)

func (e Gitlab) ToPointer() *Gitlab {
	return &e
}
func (e *Gitlab) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "gitlab":
		*e = Gitlab(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Gitlab: %v", v)
	}
}

type SourceGitlab struct {
	// Please enter your basic URL from GitLab instance.
	APIURL      *string                         `default:"gitlab.com" json:"api_url"`
	Credentials SourceGitlabAuthorizationMethod `json:"credentials"`
	// List of groups. e.g. airbyte.io.
	GroupsList []string `json:"groups_list,omitempty"`
	// Space-delimited list of projects. e.g. airbyte.io/documentation meltano/tap-gitlab.
	ProjectsList []string `json:"projects_list,omitempty"`
	// The date from which you'd like to replicate data for GitLab API, in the format YYYY-MM-DDT00:00:00Z. Optional. If not set, all data will be replicated. All data generated after this date will be replicated.
	StartDate  *time.Time `json:"start_date,omitempty"`
	sourceType Gitlab     `const:"gitlab" json:"sourceType"`
}

func (s SourceGitlab) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceGitlab) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceGitlab) GetAPIURL() *string {
	if o == nil {
		return nil
	}
	return o.APIURL
}

func (o *SourceGitlab) GetCredentials() SourceGitlabAuthorizationMethod {
	if o == nil {
		return SourceGitlabAuthorizationMethod{}
	}
	return o.Credentials
}

func (o *SourceGitlab) GetGroupsList() []string {
	if o == nil {
		return nil
	}
	return o.GroupsList
}

func (o *SourceGitlab) GetProjectsList() []string {
	if o == nil {
		return nil
	}
	return o.ProjectsList
}

func (o *SourceGitlab) GetStartDate() *time.Time {
	if o == nil {
		return nil
	}
	return o.StartDate
}

func (o *SourceGitlab) GetSourceType() Gitlab {
	return GitlabGitlab
}
