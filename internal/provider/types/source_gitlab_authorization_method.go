// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type SourceGitlabAuthorizationMethod struct {
	OAuth20      *SourceGitlabOAuth20 `tfsdk:"o_auth20" tfPlanOnly:"true"`
	PrivateToken *PrivateToken        `tfsdk:"private_token" tfPlanOnly:"true"`
}
