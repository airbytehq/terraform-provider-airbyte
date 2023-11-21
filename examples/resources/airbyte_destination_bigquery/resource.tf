resource "airbyte_destination_bigquery" "my_destination_bigquery" {
  configuration = {
    big_query_client_buffer_size_mb = 15
    credentials_json                = "...my_credentials_json..."
    dataset_id                      = "...my_dataset_id..."
    dataset_location                = "me-central2"
    disable_type_dedupe             = true
    loading_method = {
      gcs_staging = {
        credential = {
          destination_bigquery_hmac_key = {
            hmac_key_access_id = "1234567890abcdefghij1234"
            hmac_key_secret    = "1234567890abcdefghij1234567890ABCDEFGHIJ"
          }
        }
        gcs_bucket_name          = "airbyte_sync"
        gcs_bucket_path          = "data_sync/test"
        keep_files_in_gcs_bucket = "Keep all tmp files in GCS"
      }
    }
    project_id              = "...my_project_id..."
    raw_data_dataset        = "...my_raw_data_dataset..."
    transformation_priority = "batch"
  }
  definition_id = "2d142842-c5e9-475e-80d1-1a3c6d933cc0"
  name          = "Miss Celia Moore"
  workspace_id  = "2d2700dc-d43a-4c80-9ede-88b16b5e1575"
}