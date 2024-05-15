// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type DestinationMongodb struct {
	AuthType     DestinationMongodbAuthorizationType    `tfsdk:"auth_type"`
	Database     types.String                           `tfsdk:"database"`
	InstanceType *DestinationMongodbMongoDbInstanceType `tfsdk:"instance_type"`
	TunnelMethod *DestinationClickhouseSSHTunnelMethod  `tfsdk:"tunnel_method"`
}