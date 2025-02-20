resource "airbyte_destination_bigquery" "my_destination_bigquery" {
  configuration = {
    big_query_client_buffer_size_mb = 15
    credentials_json                = "...my_credentials_json..."
    dataset_id                      = "...my_dataset_id..."
    dataset_location                = "US"
    disable_type_dedupe             = true
    loading_method = {
      batched_standard_inserts = {
        # ...
      }
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
    transformation_priority = "interactive"
  }
  definition_id = "92c3eb2b-6d61-4610-adf2-eee065419ed9"
  name          = "...my_name..."
  workspace_id  = "acee73dd-54d3-476f-a8ea-d39d218f52cd"
}