resource "airbyte_source_file_secure" "my_source_filesecure" {
  configuration = {
    dataset_name = "...my_dataset_name..."
    format       = "parquet"
    provider = {
      sas_token       = "...my_sas_token..."
      shared_key      = "...my_shared_key..."
      storage         = "AzBlob"
      storage_account = "...my_storage_account..."
    }
    reader_options = "{\"sep\": \"\t\", \"header\": 0, \"names\": [\"column1\", \"column2\"] }"
    source_type    = "file-secure"
    url            = "https://storage.googleapis.com/covid19-open-data/v2/latest/epidemiology.csv"
  }
  name         = "Lucy Lind"
  workspace_id = "77c1ffc7-1dca-4163-b2a3-c80a97ff334c"
}