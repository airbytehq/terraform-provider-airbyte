// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceWordpress struct {
	Domain    types.String `tfsdk:"domain"`
	Password  types.String `tfsdk:"password"`
	StartDate types.String `tfsdk:"start_date"`
	Username  types.String `tfsdk:"username"`
}
