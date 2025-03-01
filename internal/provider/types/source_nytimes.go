// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceNytimes struct {
	APIKey    types.String `tfsdk:"api_key"`
	EndDate   types.String `tfsdk:"end_date"`
	Period    types.Int64  `tfsdk:"period"`
	ShareType types.String `tfsdk:"share_type"`
	StartDate types.String `tfsdk:"start_date"`
}
