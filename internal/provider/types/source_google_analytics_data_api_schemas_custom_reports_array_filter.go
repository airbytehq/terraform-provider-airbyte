// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type SourceGoogleAnalyticsDataAPISchemasCustomReportsArrayFilter struct {
	BetweenFilter *SourceGoogleAnalyticsDataAPIBetweenFilter `tfsdk:"between_filter" tfPlanOnly:"true"`
	InListFilter  *SourceGoogleAnalyticsDataAPIInListFilter  `tfsdk:"in_list_filter" tfPlanOnly:"true"`
	NumericFilter *SourceGoogleAnalyticsDataAPINumericFilter `tfsdk:"numeric_filter" tfPlanOnly:"true"`
	StringFilter  *SourceGoogleAnalyticsDataAPIStringFilter  `tfsdk:"string_filter" tfPlanOnly:"true"`
}
