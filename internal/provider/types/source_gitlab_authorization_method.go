// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type SourceGitlabAuthorizationMethod struct {
	OAuth20      *SourceGitlabOAuth20 `queryParam:"inline" tfsdk:"o_auth20" tfPlanOnly:"true"`
	PrivateToken *PrivateToken        `queryParam:"inline" tfsdk:"private_token" tfPlanOnly:"true"`
}
