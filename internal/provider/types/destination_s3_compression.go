// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type DestinationS3Compression struct {
	Gzip          *DestinationS3GZIP          `tfsdk:"gzip" tfPlanOnly:"true"`
	NoCompression *DestinationS3NoCompression `tfsdk:"no_compression" tfPlanOnly:"true"`
}
