// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceTheGuardianAPI struct {
	APIKey    types.String `tfsdk:"api_key"`
	EndDate   types.String `tfsdk:"end_date"`
	Query     types.String `tfsdk:"query"`
	Section   types.String `tfsdk:"section"`
	StartDate types.String `tfsdk:"start_date"`
	Tag       types.String `tfsdk:"tag"`
}
