// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type RestCatalog struct {
	AdditionalProperties types.String `tfsdk:"additional_properties"`
	CatalogType          types.String `tfsdk:"catalog_type"`
	Namespace            types.String `tfsdk:"namespace"`
	ServerURI            types.String `tfsdk:"server_uri"`
}
