// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type Authentication struct {
	OAuth20             *SourceAirtableOAuth20 `tfsdk:"o_auth20" tfPlanOnly:"true"`
	PersonalAccessToken *PersonalAccessToken   `tfsdk:"personal_access_token" tfPlanOnly:"true"`
}
