// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type UnstructuredDocumentFormat struct {
	Processing             *Processing  `tfsdk:"processing"`
	SkipUnprocessableFiles types.Bool   `tfsdk:"skip_unprocessable_files"`
	Strategy               types.String `tfsdk:"strategy"`
}
