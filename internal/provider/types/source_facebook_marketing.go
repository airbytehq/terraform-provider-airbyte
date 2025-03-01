// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceFacebookMarketing struct {
	AccessToken            types.String                          `tfsdk:"access_token"`
	AccountIds             []types.String                        `tfsdk:"account_ids"`
	AdStatuses             []types.String                        `tfsdk:"ad_statuses"`
	AdsetStatuses          []types.String                        `tfsdk:"adset_statuses"`
	CampaignStatuses       []types.String                        `tfsdk:"campaign_statuses"`
	Credentials            SourceFacebookMarketingAuthentication `tfsdk:"credentials"`
	CustomInsights         []InsightConfig                       `tfsdk:"custom_insights"`
	EndDate                types.String                          `tfsdk:"end_date"`
	FetchThumbnailImages   types.Bool                            `tfsdk:"fetch_thumbnail_images"`
	InsightsJobTimeout     types.Int64                           `tfsdk:"insights_job_timeout"`
	InsightsLookbackWindow types.Int64                           `tfsdk:"insights_lookback_window"`
	PageSize               types.Int64                           `tfsdk:"page_size"`
	StartDate              types.String                          `tfsdk:"start_date"`
}
