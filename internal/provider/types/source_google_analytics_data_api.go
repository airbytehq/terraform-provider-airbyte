// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceGoogleAnalyticsDataAPI struct {
	ConvertConversionsEvent types.Bool                                       `tfsdk:"convert_conversions_event"`
	Credentials             *SourceGoogleAnalyticsDataAPICredentials         `tfsdk:"credentials"`
	CustomReportsArray      []SourceGoogleAnalyticsDataAPICustomReportConfig `tfsdk:"custom_reports_array"`
	DateRangesEndDate       types.String                                     `tfsdk:"date_ranges_end_date"`
	DateRangesStartDate     types.String                                     `tfsdk:"date_ranges_start_date"`
	KeepEmptyRows           types.Bool                                       `tfsdk:"keep_empty_rows"`
	LookbackWindow          types.Int64                                      `tfsdk:"lookback_window"`
	PropertyIds             []types.String                                   `tfsdk:"property_ids"`
	WindowInDays            types.Int64                                      `tfsdk:"window_in_days"`
}
