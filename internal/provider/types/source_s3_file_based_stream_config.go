// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceS3FileBasedStreamConfig struct {
	DaysToSyncIfHistoryIsFull types.Int64    `tfsdk:"days_to_sync_if_history_is_full"`
	Format                    SourceS3Format `tfsdk:"format"`
	Globs                     []types.String `tfsdk:"globs"`
	InputSchema               types.String   `tfsdk:"input_schema"`
	LegacyPrefix              types.String   `tfsdk:"legacy_prefix"`
	Name                      types.String   `tfsdk:"name"`
	PrimaryKey                types.String   `tfsdk:"primary_key"`
	Schemaless                types.Bool     `tfsdk:"schemaless"`
	ValidationPolicy          types.String   `tfsdk:"validation_policy"`
}
