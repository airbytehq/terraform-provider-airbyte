// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type MongoDBAtlasReplicaSet struct {
	AdditionalProperties types.String   `tfsdk:"additional_properties"`
	AuthSource           types.String   `tfsdk:"auth_source"`
	ConnectionString     types.String   `tfsdk:"connection_string"`
	Databases            []types.String `tfsdk:"databases"`
	Password             types.String   `tfsdk:"password"`
	SchemaEnforced       types.Bool     `tfsdk:"schema_enforced"`
	Username             types.String   `tfsdk:"username"`
}
