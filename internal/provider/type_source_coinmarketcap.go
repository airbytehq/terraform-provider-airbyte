// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceCoinmarketcap struct {
	APIKey     types.String   `tfsdk:"api_key"`
	DataType   types.String   `tfsdk:"data_type"`
	SourceType types.String   `tfsdk:"source_type"`
	Symbols    []types.String `tfsdk:"symbols"`
}