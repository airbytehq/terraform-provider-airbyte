// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type SourceOracleEnterpriseUpdateMethod struct {
	ReadChangesUsingChangeDataCaptureCDC *SourceOracleEnterpriseReadChangesUsingChangeDataCaptureCDC `queryParam:"inline" tfsdk:"read_changes_using_change_data_capture_cdc" tfPlanOnly:"true"`
	ScanChangesWithUserDefinedCursor     *SourceOracleEnterpriseScanChangesWithUserDefinedCursor     `queryParam:"inline" tfsdk:"scan_changes_with_user_defined_cursor" tfPlanOnly:"true"`
}
