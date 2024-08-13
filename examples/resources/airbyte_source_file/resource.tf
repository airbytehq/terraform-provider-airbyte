resource "airbyte_source_file" "my_source_file" {
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
    url            = "https://storage.googleapis.com/covid19-open-data/v2/latest/epidemiology.csv"
  }
  definition_id = "e3e60165-4663-452d-a9b0-4e26c5d5cf50"
  name          = "Robin Wolf I"
  secret_id     = "...my_secret_id..."
  workspace_id  = "464ed5bf-6d67-4306-8c54-8e68cfaeff48"
}