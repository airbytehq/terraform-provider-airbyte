// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

type SourceSalesloftCredentials struct {
	AuthenticateViaAPIKey *APIKeyAuth          `tfsdk:"authenticate_via_api_key"`
	AuthenticateViaOAuth  *SourceGitlabOAuth20 `tfsdk:"authenticate_via_o_auth"`
}
