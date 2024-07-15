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
    reader_options = "{}"
    url            = "gs://my-google-bucket/data.csv"
  }
  definition_id = "0df143ee-10f8-4279-a427-b2c340e1d4b4"
  name          = "Mr. Carole Predovic"
  secret_id     = "...my_secret_id..."
  workspace_id  = "62aeeab6-a16b-4c0f-9be5-567777324c6c"
}