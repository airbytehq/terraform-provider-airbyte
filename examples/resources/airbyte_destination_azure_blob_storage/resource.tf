resource "airbyte_destination_azure_blob_storage" "my_destination_azureblobstorage" {
  configuration = {
    azure_blob_storage_account_key          = "Z8ZkZpteggFx394vm+PJHnGTvdRncaYS+JhLKdj789YNmD+iyGTnG+PV+POiuYNhBg/ACS+LKjd%4FG3FHGN12Nd=="
    azure_blob_storage_account_name         = "airbyte5storage"
    azure_blob_storage_container_name       = "airbytetescontainername"
    azure_blob_storage_endpoint_domain_name = "blob.core.windows.net"
    azure_blob_storage_output_buffer_size   = 5
    azure_blob_storage_spill_size           = 500
    format = {
      destination_azure_blob_storage_output_format_csv_comma_separated_values = {
        flattening = "No flattening"
      }
    }
  }
  name         = "Aaron Wisozk"
  workspace_id = "fb9aea60-f386-4615-a68b-5c3f592b38ac"
}