// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourcePinterest struct {
	Credentials   *OAuth20       `tfsdk:"credentials"`
	CustomReports []ReportConfig `tfsdk:"custom_reports"`
	StartDate     types.String   `tfsdk:"start_date"`
	Status        []types.String `tfsdk:"status"`
}
