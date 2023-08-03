resource "airbyte_destination_bigquery_denormalized" "my_destination_bigquerydenormalized" {
  configuration = {
    big_query_client_buffer_size_mb = 15
    credentials_json                = "...my_credentials_json..."
    dataset_id                      = "...my_dataset_id..."
    dataset_location                = "northamerica-northeast2"
    destination_type                = "bigquery-denormalized"
    loading_method = {
      credential = {
        credential_type    = "HMAC_KEY"
        hmac_key_access_id = "1234567890abcdefghij1234"
        hmac_key_secret    = "1234567890abcdefghij1234567890ABCDEFGHIJ"
      }
      file_buffer_count        = 10
      gcs_bucket_name          = "airbyte_sync"
      gcs_bucket_path          = "data_sync/test"
      keep_files_in_gcs_bucket = "Delete all tmp files from GCS"
      method                   = "GCS Staging"
    }
    project_id = "...my_project_id..."
  }
  name         = "Irving Jenkins"
  workspace_id = "e395efb9-ba88-4f3a-a699-7074ba4469b6"
}