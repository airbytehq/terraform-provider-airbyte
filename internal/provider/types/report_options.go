// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type ReportOptions struct {
	OptionsList []OptionsList `tfsdk:"options_list"`
	ReportName  types.String  `tfsdk:"report_name"`
	StreamName  types.String  `tfsdk:"stream_name"`
}
