// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceRevolutMerchant struct {
	APIVersion   types.String `tfsdk:"api_version"`
	Environment  types.String `tfsdk:"environment"`
	SecretAPIKey types.String `tfsdk:"secret_api_key"`
	StartDate    types.String `tfsdk:"start_date"`
}
