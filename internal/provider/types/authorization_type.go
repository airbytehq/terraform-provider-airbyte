// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type AuthorizationType struct {
	LoginPassword *LoginPassword          `tfsdk:"login_password" tfPlanOnly:"true"`
	None          *DestinationMongodbNone `tfsdk:"none" tfPlanOnly:"true"`
}
