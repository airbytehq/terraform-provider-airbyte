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
        flattening = "Root level flattening"
      }
    }
  }
  definition_id = "163ca2e9-2d14-4284-ac5e-975e40d11a3c"
  name          = "Betsy Mann"
  workspace_id  = "cc05b91a-72d2-4700-9cd4-3ac809ede88b"
}