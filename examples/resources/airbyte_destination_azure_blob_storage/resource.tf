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
        flattening = "No flattening"
      }
    }
  }
  definition_id = "b38acf3b-23ea-44e3-abf4-ba0e7ac63cda"
  name          = "Rogelio Purdy"
  workspace_id  = "cd76c9fd-07c9-468d-acb9-cb44c87d9163"
}