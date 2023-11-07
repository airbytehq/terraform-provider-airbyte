resource "airbyte_source_file_secure" "my_source_filesecure" {
  configuration = {
    dataset_name = "...my_dataset_name..."
    format       = "excel_binary"
    provider = {
      az_blob_azure_blob_storage = {
        sas_token       = "...my_sas_token..."
        shared_key      = "...my_shared_key..."
        storage_account = "...my_storage_account..."
      }
    }
    reader_options = "{}"
    url            = "gs://my-google-bucket/data.csv"
  }
  name         = "Guadalupe Senger I"
  secret_id    = "...my_secret_id..."
  workspace_id = "7451945c-4336-4052-aae8-aa3c4f287913"
}