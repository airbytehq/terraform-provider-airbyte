resource "airbyte_source_file" "my_source_file" {
  configuration = {
    dataset_name = "...my_dataset_name..."
    format       = "yaml"
    provider = {
      az_blob_azure_blob_storage = {
        sas_token       = "...my_sas_token..."
        shared_key      = "...my_shared_key..."
        storage_account = "...my_storage_account..."
      }
    }
    reader_options = "{\"sep\": \" \"}"
    url            = "gs://my-google-bucket/data.csv"
  }
  definition_id = "16116fc8-03c8-4311-a97a-1ae894962943"
  name          = "Kristine Bailey"
  secret_id     = "...my_secret_id..."
  workspace_id  = "eacfe7e0-17f9-4052-b204-0e069282dd6a"
}