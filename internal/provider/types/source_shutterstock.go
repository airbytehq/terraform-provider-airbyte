// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceShutterstock struct {
	APIToken              types.String `tfsdk:"api_token"`
	QueryForAudioSearch   types.String `tfsdk:"query_for_audio_search"`
	QueryForCatalogSearch types.String `tfsdk:"query_for_catalog_search"`
	QueryForImageSearch   types.String `tfsdk:"query_for_image_search"`
	QueryForVideoSearch   types.String `tfsdk:"query_for_video_search"`
	StartDate             types.String `tfsdk:"start_date"`
}
