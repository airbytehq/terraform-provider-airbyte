// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type Logging struct {
	AdditionalProperties types.String         `tfsdk:"additional_properties"`
	LoggingConfig        LoggingConfiguration `tfsdk:"logging_config"`
	TestDestinationType  types.String         `tfsdk:"test_destination_type"`
}
