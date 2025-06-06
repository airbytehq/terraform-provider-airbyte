// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceSftpBulkCSVFormat struct {
	Delimiter                    types.String                       `tfsdk:"delimiter"`
	DoubleQuote                  types.Bool                         `tfsdk:"double_quote"`
	Encoding                     types.String                       `tfsdk:"encoding"`
	EscapeChar                   types.String                       `tfsdk:"escape_char"`
	FalseValues                  []types.String                     `tfsdk:"false_values"`
	HeaderDefinition             *SourceSftpBulkCSVHeaderDefinition `tfsdk:"header_definition"`
	IgnoreErrorsOnFieldsMismatch types.Bool                         `tfsdk:"ignore_errors_on_fields_mismatch"`
	NullValues                   []types.String                     `tfsdk:"null_values"`
	QuoteChar                    types.String                       `tfsdk:"quote_char"`
	SkipRowsAfterHeader          types.Int64                        `tfsdk:"skip_rows_after_header"`
	SkipRowsBeforeHeader         types.Int64                        `tfsdk:"skip_rows_before_header"`
	StringsCanBeNull             types.Bool                         `tfsdk:"strings_can_be_null"`
	TrueValues                   []types.String                     `tfsdk:"true_values"`
}
