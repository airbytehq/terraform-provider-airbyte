// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceGcsFileBasedStreamConfig struct {
	DaysToSyncIfHistoryIsFull            types.Int64     `tfsdk:"days_to_sync_if_history_is_full"`
	Format                               SourceGcsFormat `tfsdk:"format"`
	Globs                                []types.String  `tfsdk:"globs"`
	InputSchema                          types.String    `tfsdk:"input_schema"`
	LegacyPrefix                         types.String    `tfsdk:"legacy_prefix"`
	Name                                 types.String    `tfsdk:"name"`
	PrimaryKey                           types.String    `tfsdk:"primary_key"`
	RecentNFilesToReadForSchemaDiscovery types.Int64     `tfsdk:"recent_n_files_to_read_for_schema_discovery"`
	Schemaless                           types.Bool      `tfsdk:"schemaless"`
	ValidationPolicy                     types.String    `tfsdk:"validation_policy"`
}