resource "airbyte_destination_bigquery" "my_destination_bigquery" {
  configuration = {
    big_query_client_buffer_size_mb = 15
    credentials_json                = "...my_credentials_json..."
    dataset_id                      = "...my_dataset_id..."
    dataset_location                = "southamerica-west1"
    disable_type_dedupe             = true
    loading_method = {
      batched_standard_inserts = {}
    }
    project_id              = "...my_project_id..."
    raw_data_dataset        = "...my_raw_data_dataset..."
    transformation_priority = "batch"
  }
  definition_id = "15759d85-e2c2-4763-98b4-688adb42653c"
  name          = "Lori Kunde"
  workspace_id  = "18b5ab2e-b4f4-41e2-ae39-b661a09af712"
}