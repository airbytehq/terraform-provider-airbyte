// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

type SourceSquareAuthentication struct {
	APIKey              *APIKeyAuth                                          `tfsdk:"api_key"`
	OauthAuthentication *DestinationGoogleSheetsAuthenticationViaGoogleOAuth `tfsdk:"oauth_authentication"`
}
