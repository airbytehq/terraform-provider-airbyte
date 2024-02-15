resource "airbyte_source_file" "my_source_file" {
  configuration = {
    dataset_name = "...my_dataset_name..."
    format       = "csv"
    provider = {
      az_blob_azure_blob_storage = {
        sas_token       = "...my_sas_token..."
        shared_key      = "...my_shared_key..."
        storage_account = "...my_storage_account..."
      }
    }
    reader_options = "{\"sep\": \"\t\", \"header\": 0, \"names\": [\"column1\", \"column2\"] }"
    url            = "s3://gdelt-open-data/events/20190914.export.csv"
  }
  definition_id = "2224121e-6315-4be3-86a4-e83994413a7c"
  name          = "Beatrice Spencer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "70b5882c-881a-4087-8bfd-f7e2fa4a6362"
}