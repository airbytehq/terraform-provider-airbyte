// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package types

type SourceSmartsheetsAuthorizationMethod struct {
	APIAccessToken *OAuth2AccessToken   `tfsdk:"api_access_token" tfPlanOnly:"true"`
	OAuth20        *SourceGitlabOAuth20 `tfsdk:"o_auth20" tfPlanOnly:"true"`
}