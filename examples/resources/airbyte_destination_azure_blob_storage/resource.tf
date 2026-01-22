resource "airbyte_destination_azure_blob_storage" "my_destination_azureblobstorage" {
  configuration = {
    azure_blob_storage_account_key          = "Z8ZkZpteggFx394vm+PJHnGTvdRncaYS+JhLKdj789YNmD+iyGTnG+PV+POiuYNhBg/ACS+LKjd%4FG3FHGN12Nd=="
    azure_blob_storage_account_name         = "mystorageaccount"
    azure_blob_storage_container_name       = "mycontainer"
    azure_blob_storage_endpoint_domain_name = "...my_azure_blob_storage_endpoint_domain_name..."
    azure_blob_storage_spill_size           = 3
    format = {
      # ...
    }
    shared_access_signature = "sv=2021-08-06&st=2025-04-11T00%3A00%3A00Z&se=2025-04-12T00%3A00%3A00Z&sr=b&sp=rw&sig=abcdefghijklmnopqrstuvwxyz1234567890%2Fabcdefg%3D"
  }
  definition_id = "0b662a17-77d2-477f-ba0e-7117eb18de2e"
  name          = "...my_name..."
  workspace_id  = "617341df-1fde-4735-ba68-f98eeb6e6bd6"
}