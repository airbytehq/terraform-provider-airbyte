// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceShopify struct {
	BulkWindowInDays                    types.Int64                 `tfsdk:"bulk_window_in_days"`
	Credentials                         *ShopifyAuthorizationMethod `tfsdk:"credentials"`
	FetchTransactionsUserID             types.Bool                  `tfsdk:"fetch_transactions_user_id"`
	JobCheckpointInterval               types.Int64                 `tfsdk:"job_checkpoint_interval"`
	JobProductVariantsIncludePresPrices types.Bool                  `tfsdk:"job_product_variants_include_pres_prices"`
	JobTerminationThreshold             types.Int64                 `tfsdk:"job_termination_threshold"`
	Shop                                types.String                `tfsdk:"shop"`
	StartDate                           types.String                `tfsdk:"start_date"`
}
