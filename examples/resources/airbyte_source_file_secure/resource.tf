resource "airbyte_source_file_secure" "my_source_filesecure" {
  configuration = {
    dataset_name = "...my_dataset_name..."
    format       = "yaml"
    provider = {
      source_file_secure_storage_provider_az_blob_azure_blob_storage = {
        sas_token       = "...my_sas_token..."
        shared_key      = "...my_shared_key..."
        storage         = "AzBlob"
        storage_account = "...my_storage_account..."
      }
    }
    reader_options = "{}"
    source_type    = "file-secure"
    url            = "gs://my-google-bucket/data.csv"
  }
  name         = "Miss Sheri Legros"
  secret_id    = "...my_secretId..."
  workspace_id = "7ff334cd-df85-47a9-a618-76c6ab21d29d"
}