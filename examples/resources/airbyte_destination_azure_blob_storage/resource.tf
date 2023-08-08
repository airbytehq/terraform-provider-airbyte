resource "airbyte_destination_azure_blob_storage" "my_destination_azureblobstorage" {
  configuration = {
    azure_blob_storage_account_key          = "Z8ZkZpteggFx394vm+PJHnGTvdRncaYS+JhLKdj789YNmD+iyGTnG+PV+POiuYNhBg/ACS+LKjd%4FG3FHGN12Nd=="
    azure_blob_storage_account_name         = "airbyte5storage"
    azure_blob_storage_container_name       = "airbytetescontainername"
    azure_blob_storage_endpoint_domain_name = "blob.core.windows.net"
    azure_blob_storage_output_buffer_size   = 5
    azure_blob_storage_spill_size           = 500
    destination_type                        = "azure-blob-storage"
    format = {
      destination_azure_blob_storage_output_format_csv_comma_separated_values = {
        flattening  = "Root level flattening"
        format_type = "CSV"
      }
    }
  }
  name         = "Sophia Jerde I"
  workspace_id = "b99d488e-1e91-4e45-8ad2-abd44269802d"
}