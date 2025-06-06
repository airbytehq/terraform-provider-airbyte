// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type SourcePostgresUpdateMethod struct {
	DetectChangesWithXminSystemColumn *DetectChangesWithXminSystemColumn              `queryParam:"inline" tfsdk:"detect_changes_with_xmin_system_column" tfPlanOnly:"true"`
	ReadChangesUsingWriteAheadLogCDC  *ReadChangesUsingWriteAheadLogCDC               `queryParam:"inline" tfsdk:"read_changes_using_write_ahead_log_cdc" tfPlanOnly:"true"`
	ScanChangesWithUserDefinedCursor  *SourcePostgresScanChangesWithUserDefinedCursor `queryParam:"inline" tfsdk:"scan_changes_with_user_defined_cursor" tfPlanOnly:"true"`
}
