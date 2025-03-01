// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type DestinationTeradataSSLModes struct {
	Allow      *DestinationTeradataAllow      `queryParam:"inline" tfsdk:"allow" tfPlanOnly:"true"`
	Disable    *DestinationTeradataDisable    `queryParam:"inline" tfsdk:"disable" tfPlanOnly:"true"`
	Prefer     *DestinationTeradataPrefer     `queryParam:"inline" tfsdk:"prefer" tfPlanOnly:"true"`
	Require    *DestinationTeradataRequire    `queryParam:"inline" tfsdk:"require" tfPlanOnly:"true"`
	VerifyCa   *DestinationTeradataVerifyCa   `queryParam:"inline" tfsdk:"verify_ca" tfPlanOnly:"true"`
	VerifyFull *DestinationTeradataVerifyFull `queryParam:"inline" tfsdk:"verify_full" tfPlanOnly:"true"`
}
