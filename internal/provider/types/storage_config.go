// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type StorageConfig struct {
	S3            *DestinationIcebergS3 `queryParam:"inline" tfsdk:"s3" tfPlanOnly:"true"`
	ServerManaged *ServerManaged        `queryParam:"inline" tfsdk:"server_managed" tfPlanOnly:"true"`
}
