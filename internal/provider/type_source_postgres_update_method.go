// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

type SourcePostgresUpdateMethod struct {
	DetectChangesWithXminSystemColumn *Fake                             `tfsdk:"detect_changes_with_xmin_system_column"`
	ReadChangesUsingWriteAheadLogCDC  *ReadChangesUsingWriteAheadLogCDC `tfsdk:"read_changes_using_write_ahead_log_cdc"`
	ScanChangesWithUserDefinedCursor  *Fake                             `tfsdk:"scan_changes_with_user_defined_cursor"`
}
