resource "airbyte_destination_bigquery" "my_destination_bigquery" {
  configuration = {
    big_query_client_buffer_size_mb = 15
    credentials_json                = "...my_credentials_json..."
    dataset_id                      = "...my_dataset_id..."
    dataset_location                = "europe-west2"
    disable_type_dedupe             = false
    loading_method = {
      gcs_staging = {
        credential = {
          hmac_key = {
            hmac_key_access_id = "1234567890abcdefghij1234"
            hmac_key_secret    = "1234567890abcdefghij1234567890ABCDEFGHIJ"
          }
        }
        gcs_bucket_name          = "airbyte_sync"
        gcs_bucket_path          = "data_sync/test"
        keep_files_in_gcs_bucket = "Delete all tmp files from GCS"
      }
    }
    project_id              = "...my_project_id..."
    raw_data_dataset        = "...my_raw_data_dataset..."
    transformation_priority = "batch"
  }
  definition_id = "15759d85-e2c2-4763-98b4-688adb42653c"
  name          = "Lori Kunde"
  workspace_id  = "18b5ab2e-b4f4-41e2-ae39-b661a09af712"
}