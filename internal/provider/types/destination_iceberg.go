// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type DestinationIceberg struct {
	CatalogConfig IcebergCatalogConfig         `tfsdk:"catalog_config"`
	FormatConfig  DestinationIcebergFileFormat `tfsdk:"format_config"`
	StorageConfig StorageConfig                `tfsdk:"storage_config"`
}
