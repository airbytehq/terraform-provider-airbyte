// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package types

type DestinationMongodbAuthorizationType struct {
	LoginPassword *UsernamePassword `tfsdk:"login_password" tfPlanOnly:"true"`
	None          *Fake             `tfsdk:"none" tfPlanOnly:"true"`
}