// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type CohortsRange struct {
	EndOffset   types.Int64  `tfsdk:"end_offset"`
	Granularity types.String `tfsdk:"granularity"`
	StartOffset types.Int64  `tfsdk:"start_offset"`
}
