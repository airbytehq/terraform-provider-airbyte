// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceNetsuite struct {
	ConsumerKey    types.String   `tfsdk:"consumer_key"`
	ConsumerSecret types.String   `tfsdk:"consumer_secret"`
	ObjectTypes    []types.String `tfsdk:"object_types"`
	Realm          types.String   `tfsdk:"realm"`
	StartDatetime  types.String   `tfsdk:"start_datetime"`
	TokenKey       types.String   `tfsdk:"token_key"`
	TokenSecret    types.String   `tfsdk:"token_secret"`
	WindowInDays   types.Int64    `tfsdk:"window_in_days"`
}
