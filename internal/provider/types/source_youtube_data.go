// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceYoutubeData struct {
	APIKey     types.String   `tfsdk:"api_key"`
	ChannelIds []types.String `tfsdk:"channel_ids"`
}
