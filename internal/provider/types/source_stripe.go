// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceStripe struct {
	AccountID          types.String `tfsdk:"account_id"`
	CallRateLimit      types.Int64  `tfsdk:"call_rate_limit"`
	ClientSecret       types.String `tfsdk:"client_secret"`
	LookbackWindowDays types.Int64  `tfsdk:"lookback_window_days"`
	NumWorkers         types.Int64  `tfsdk:"num_workers"`
	SliceRange         types.Int64  `tfsdk:"slice_range"`
	StartDate          types.String `tfsdk:"start_date"`
}