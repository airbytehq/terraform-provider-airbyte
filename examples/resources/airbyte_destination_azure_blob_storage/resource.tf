resource "airbyte_destination_azure_blob_storage" "my_destination_azureblobstorage" {
  configuration = {
    azure_blob_storage_account_key          = "Z8ZkZpteggFx394vm+PJHnGTvdRncaYS+JhLKdj789YNmD+iyGTnG+PV+POiuYNhBg/ACS+LKjd%4FG3FHGN12Nd=="
    azure_blob_storage_account_name         = "airbyte5storage"
    azure_blob_storage_container_name       = "airbytetescontainername"
    azure_blob_storage_endpoint_domain_name = "blob.core.windows.net"
    azure_blob_storage_output_buffer_size   = 5
    azure_blob_storage_spill_size           = 500
    format = {
      csv_comma_separated_values = {
        file_extension = true
        flattening     = "No flattening"
      }
    }
  }
  definition_id = "63ca2e92-d142-4842-85e9-75e40d11a3c6"
  name          = "Virgil Dickens"
  workspace_id  = "c05b91a7-2d27-400d-8d43-ac809ede88b1"
}