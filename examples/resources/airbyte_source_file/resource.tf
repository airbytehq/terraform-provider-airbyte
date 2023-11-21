resource "airbyte_source_file" "my_source_file" {
  configuration = {
    dataset_name = "...my_dataset_name..."
    format       = "jsonl"
    provider = {
      az_blob_azure_blob_storage = {
        sas_token       = "...my_sas_token..."
        shared_key      = "...my_shared_key..."
        storage_account = "...my_storage_account..."
      }
    }
    reader_options = "{\"sep\": \"\t\", \"header\": 0, \"names\": [\"column1\", \"column2\"] }"
    url            = "https://storage.googleapis.com/covid19-open-data/v2/latest/epidemiology.csv"
  }
  definition_id = "6c5d5cf5-0fbf-4713-864e-d5bf6d67306c"
  name          = "Floyd Goyette"
  secret_id     = "...my_secret_id..."
  workspace_id  = "68cfaeff-480d-4f14-bee1-0f8279e427b2"
}