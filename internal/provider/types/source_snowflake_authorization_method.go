// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package types

type SourceSnowflakeAuthorizationMethod struct {
	KeyPairAuthentication *SourceSnowflakeKeyPairAuthentication `tfsdk:"key_pair_authentication" tfPlanOnly:"true"`
	OAuth20               *SourceSnowflakeOAuth20               `tfsdk:"o_auth20" tfPlanOnly:"true"`
	UsernameAndPassword   *UsernamePassword                     `tfsdk:"username_and_password" tfPlanOnly:"true"`
}
