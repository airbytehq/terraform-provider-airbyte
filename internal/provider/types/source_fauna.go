// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceFauna struct {
	Collection *Collection  `tfsdk:"collection"`
	Domain     types.String `tfsdk:"domain"`
	Port       types.Int64  `tfsdk:"port"`
	Scheme     types.String `tfsdk:"scheme"`
	Secret     types.String `tfsdk:"secret"`
}
