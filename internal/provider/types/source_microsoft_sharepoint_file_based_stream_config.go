// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceMicrosoftSharepointFileBasedStreamConfig struct {
	DaysToSyncIfHistoryIsFull            types.Int64                     `tfsdk:"days_to_sync_if_history_is_full"`
	Format                               SourceMicrosoftSharepointFormat `tfsdk:"format"`
	Globs                                []types.String                  `tfsdk:"globs"`
	InputSchema                          types.String                    `tfsdk:"input_schema"`
	Name                                 types.String                    `tfsdk:"name"`
	RecentNFilesToReadForSchemaDiscovery types.Int64                     `tfsdk:"recent_n_files_to_read_for_schema_discovery"`
	Schemaless                           types.Bool                      `tfsdk:"schemaless"`
	ValidationPolicy                     types.String                    `tfsdk:"validation_policy"`
}
