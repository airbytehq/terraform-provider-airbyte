resource "airbyte_destination_bigquery" "my_destination_bigquery" {
  configuration = {
    big_query_client_buffer_size_mb = 15
    credentials_json                = "...my_credentials_json..."
    dataset_id                      = "...my_dataset_id..."
    dataset_location                = "southamerica-west1"
    disable_type_dedupe             = true
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
        keep_files_in_gcs_bucket = "Keep all tmp files in GCS"
      }
    }
    project_id              = "...my_project_id..."
    raw_data_dataset        = "...my_raw_data_dataset..."
    transformation_priority = "interactive"
  }
  definition_id = "5759d85e-2c27-4639-8b46-88adb42653c3"
  name          = "Stella Zulauf IV"
  workspace_id  = "b5ab2eb4-f41e-422e-b9b6-61a09af71290"
}