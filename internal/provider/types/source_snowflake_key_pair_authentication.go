// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceSnowflakeKeyPairAuthentication struct {
	PrivateKey         types.String `tfsdk:"private_key"`
	PrivateKeyPassword types.String `tfsdk:"private_key_password"`
	Username           types.String `tfsdk:"username"`
}