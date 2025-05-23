// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type RandomSampling struct {
	AdditionalProperties types.String `tfsdk:"additional_properties"`
	LoggingType          types.String `tfsdk:"logging_type"`
	MaxEntryCount        types.Number `tfsdk:"max_entry_count"`
	SamplingRatio        types.Number `tfsdk:"sampling_ratio"`
	Seed                 types.Number `tfsdk:"seed"`
}
