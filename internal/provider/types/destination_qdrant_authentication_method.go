// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type DestinationQdrantAuthenticationMethod struct {
	APIKeyAuth *APIKeyAuth              `queryParam:"inline" tfsdk:"api_key_auth" tfPlanOnly:"true"`
	NoAuth     *DestinationQdrantNoAuth `queryParam:"inline" tfsdk:"no_auth" tfPlanOnly:"true"`
}
