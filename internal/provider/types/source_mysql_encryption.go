// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type SourceMysqlEncryption struct {
	Preferred      *Preferred      `queryParam:"inline" tfsdk:"preferred" tfPlanOnly:"true"`
	Required       *Required       `queryParam:"inline" tfsdk:"required" tfPlanOnly:"true"`
	VerifyCa       *VerifyCa       `queryParam:"inline" tfsdk:"verify_ca" tfPlanOnly:"true"`
	VerifyIdentity *VerifyIdentity `queryParam:"inline" tfsdk:"verify_identity" tfPlanOnly:"true"`
}
