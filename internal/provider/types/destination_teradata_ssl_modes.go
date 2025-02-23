// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type DestinationTeradataSSLModes struct {
	Allow      *DestinationTeradataAllow      `tfsdk:"allow" tfPlanOnly:"true"`
	Disable    *DestinationTeradataDisable    `tfsdk:"disable" tfPlanOnly:"true"`
	Prefer     *DestinationTeradataPrefer     `tfsdk:"prefer" tfPlanOnly:"true"`
	Require    *DestinationTeradataRequire    `tfsdk:"require" tfPlanOnly:"true"`
	VerifyCa   *DestinationTeradataVerifyCa   `tfsdk:"verify_ca" tfPlanOnly:"true"`
	VerifyFull *DestinationTeradataVerifyFull `tfsdk:"verify_full" tfPlanOnly:"true"`
}
