// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type SourceNetsuiteEnterpriseAuthenticationMethod struct {
	PasswordAuthentication   *SourceNetsuiteEnterprisePasswordAuthentication `queryParam:"inline" tfsdk:"password_authentication" tfPlanOnly:"true"`
	TokenBasedAuthentication *TokenBasedAuthentication                       `queryParam:"inline" tfsdk:"token_based_authentication" tfPlanOnly:"true"`
}
