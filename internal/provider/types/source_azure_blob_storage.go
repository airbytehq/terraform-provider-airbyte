// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceAzureBlobStorage struct {
	AzureBlobStorageAccountName   types.String                         `tfsdk:"azure_blob_storage_account_name"`
	AzureBlobStorageContainerName types.String                         `tfsdk:"azure_blob_storage_container_name"`
	AzureBlobStorageEndpoint      types.String                         `tfsdk:"azure_blob_storage_endpoint"`
	Credentials                   SourceAzureBlobStorageAuthentication `tfsdk:"credentials"`
	StartDate                     types.String                         `tfsdk:"start_date"`
	Streams                       []FileBasedStreamConfig              `tfsdk:"streams"`
}