// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type SourceSquareAuthentication struct {
	APIKey              *SourceSquareAPIKey  `queryParam:"inline" tfsdk:"api_key" tfPlanOnly:"true"`
	OauthAuthentication *OauthAuthentication `queryParam:"inline" tfsdk:"oauth_authentication" tfPlanOnly:"true"`
}
