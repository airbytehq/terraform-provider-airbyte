// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type SourceGoogleAnalyticsDataAPISchemasCustomReportsArrayMetricFilterFilter struct {
	BetweenFilter *SourceGoogleAnalyticsDataAPISchemasCustomReportsArrayMetricFilterBetweenFilter `tfsdk:"between_filter" tfPlanOnly:"true"`
	InListFilter  *SourceGoogleAnalyticsDataAPISchemasCustomReportsArrayMetricFilterInListFilter  `tfsdk:"in_list_filter" tfPlanOnly:"true"`
	NumericFilter *SourceGoogleAnalyticsDataAPISchemasCustomReportsArrayMetricFilterNumericFilter `tfsdk:"numeric_filter" tfPlanOnly:"true"`
	StringFilter  *SourceGoogleAnalyticsDataAPISchemasCustomReportsArrayMetricFilterStringFilter  `tfsdk:"string_filter" tfPlanOnly:"true"`
}
