// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceElasticemail struct {
	APIKey    types.String `tfsdk:"api_key"`
	From      types.String `tfsdk:"from"`
	ScopeType types.String `tfsdk:"scope_type"`
	StartDate types.String `tfsdk:"start_date"`
}
