// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type CentralAPIRouter struct {
	SiteID     types.String `tfsdk:"site_id"`
	UserName   types.String `tfsdk:"user_name"`
	UserSecret types.String `tfsdk:"user_secret"`
}
