// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type DestinationYellowbrickSSLModes struct {
	Allow      *DestinationYellowbrickAllow      `tfsdk:"allow" tfPlanOnly:"true"`
	Disable    *DestinationYellowbrickDisable    `tfsdk:"disable" tfPlanOnly:"true"`
	Prefer     *DestinationYellowbrickPrefer     `tfsdk:"prefer" tfPlanOnly:"true"`
	Require    *DestinationYellowbrickRequire    `tfsdk:"require" tfPlanOnly:"true"`
	VerifyCa   *DestinationYellowbrickVerifyCa   `tfsdk:"verify_ca" tfPlanOnly:"true"`
	VerifyFull *DestinationYellowbrickVerifyFull `tfsdk:"verify_full" tfPlanOnly:"true"`
}
