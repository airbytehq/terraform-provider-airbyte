resource "airbyte_destination_azure_blob_storage" "my_destination_azureblobstorage" {
  configuration = {
    additional_properties                   = "{ \"see\": \"documentation\" }"
    azure_blob_storage_account_key          = "Z8ZkZpteggFx394vm+PJHnGTvdRncaYS+JhLKdj789YNmD+iyGTnG+PV+POiuYNhBg/ACS+LKjd%4FG3FHGN12Nd=="
    azure_blob_storage_account_name         = "mystorageaccount"
    azure_blob_storage_container_name       = "mycontainer"
    azure_blob_storage_endpoint_domain_name = "...my_azure_blob_storage_endpoint_domain_name..."
    azure_blob_storage_spill_size           = 500
    azure_client_id                         = "87654321-4321-4321-4321-210987654321"
    azure_client_secret                     = "your-client-secret"
    azure_tenant_id                         = "12345678-1234-1234-1234-123456789012"
    format = {
      json_lines_newline_delimited_json = {
        additional_properties = "{ \"see\": \"documentation\" }"
        flattening            = "No flattening"
        format_type           = "JSONL"
      }
    }
    shared_access_signature = "sv=2021-08-06&st=2025-04-11T00%3A00%3A00Z&se=2025-04-12T00%3A00%3A00Z&sr=b&sp=rw&sig=abcdefghijklmnopqrstuvwxyz1234567890%2Fabcdefg%3D"
  }
  definition_id = "b4c5d105-31fd-4817-96b6-cb923bfc04cb"
  name          = "...my_name..."
  workspace_id  = "617341df-1fde-4735-ba68-f98eeb6e6bd6"
}