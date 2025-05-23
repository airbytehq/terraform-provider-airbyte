// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type DestinationS3DataLake struct {
	AccessKeyID       types.String `tfsdk:"access_key_id"`
	CatalogType       CatalogType  `tfsdk:"catalog_type"`
	MainBranchName    types.String `tfsdk:"main_branch_name"`
	S3BucketName      types.String `tfsdk:"s3_bucket_name"`
	S3BucketRegion    types.String `tfsdk:"s3_bucket_region"`
	S3Endpoint        types.String `tfsdk:"s3_endpoint"`
	SecretAccessKey   types.String `tfsdk:"secret_access_key"`
	WarehouseLocation types.String `tfsdk:"warehouse_location"`
}
