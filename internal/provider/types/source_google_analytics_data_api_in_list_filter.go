// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceGoogleAnalyticsDataAPIInListFilter struct {
	CaseSensitive types.Bool     `tfsdk:"case_sensitive"`
	Values        []types.String `tfsdk:"values"`
}
