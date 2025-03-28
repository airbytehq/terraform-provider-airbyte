// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceFreshcaller struct {
	APIKey            types.String `tfsdk:"api_key"`
	Domain            types.String `tfsdk:"domain"`
	RequestsPerMinute types.Int64  `tfsdk:"requests_per_minute"`
	StartDate         types.String `tfsdk:"start_date"`
	SyncLagMinutes    types.Int64  `tfsdk:"sync_lag_minutes"`
}
