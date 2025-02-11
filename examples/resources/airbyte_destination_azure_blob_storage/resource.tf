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
        file_extension = false
        flattening     = "Root level flattening"
      }
      json_lines_newline_delimited_json = {
        file_extension = false
      }
    }
  }
  definition_id = "0b662a17-77d2-477f-ba0e-7117eb18de2e"
  name          = "...my_name..."
  workspace_id  = "617341df-1fde-4735-ba68-f98eeb6e6bd6"
}