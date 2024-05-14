resource "airbyte_source_file" "my_source_file" {
  configuration = {
    dataset_name = "...my_dataset_name..."
    format       = "excel"
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
  definition_id = "7915a2f4-49e5-4b0b-a8d5-fb4b99e2f7dc"
  name          = "Christy Feest"
  secret_id     = "...my_secret_id..."
  workspace_id  = "76bbd55f-566b-44ad-a049-8ec40fd8ad91"
}