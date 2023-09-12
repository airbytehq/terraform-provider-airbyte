resource "airbyte_source_file_secure" "my_source_filesecure" {
  configuration = {
    dataset_name = "...my_dataset_name..."
    format       = "excel_binary"
    provider = {
      source_file_secure_storage_provider_az_blob_azure_blob_storage = {
        sas_token       = "...my_sas_token..."
        shared_key      = "...my_shared_key..."
        storage         = "AzBlob"
        storage_account = "...my_storage_account..."
      }
    }
    reader_options = "{\"sep\": \" \"}"
    source_type    = "file-secure"
    url            = "gs://my-google-bucket/data.csv"
  }
  name         = "Freddie Von V"
  secret_id    = "...my_secret_id..."
  workspace_id = "76c6ab21-d29d-4fc9-8d6f-ecd799390066"
}