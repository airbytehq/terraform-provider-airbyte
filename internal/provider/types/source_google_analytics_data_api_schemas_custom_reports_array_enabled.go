// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type SourceGoogleAnalyticsDataAPISchemasCustomReportsArrayEnabled struct {
	CohortReportSettings *CohortReportSettings `tfsdk:"cohort_report_settings"`
	Cohorts              []Cohorts             `tfsdk:"cohorts"`
	CohortsRange         *CohortsRange         `tfsdk:"cohorts_range"`
}
