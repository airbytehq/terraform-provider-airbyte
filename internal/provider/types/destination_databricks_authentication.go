// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type DestinationDatabricksAuthentication struct {
	OAuth2Recommended   *OAuth2Recommended                        `queryParam:"inline" tfsdk:"o_auth2_recommended" tfPlanOnly:"true"`
	PersonalAccessToken *DestinationDatabricksPersonalAccessToken `queryParam:"inline" tfsdk:"personal_access_token" tfPlanOnly:"true"`
}
