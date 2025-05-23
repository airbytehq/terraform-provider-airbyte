// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceAsana struct {
	Credentials           *AuthenticationMechanism `tfsdk:"credentials"`
	NumWorkers            types.Int64              `tfsdk:"num_workers"`
	OrganizationExportIds []types.String           `tfsdk:"organization_export_ids"`
}
