// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceGoogleAnalyticsDataAPIFilter struct {
	FieldName types.String                                                               `tfsdk:"field_name"`
	Filter    SourceGoogleAnalyticsDataAPISchemasCustomReportsArrayDimensionFilterFilter `tfsdk:"filter"`
}
