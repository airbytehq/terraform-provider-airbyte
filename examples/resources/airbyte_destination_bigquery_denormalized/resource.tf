resource "airbyte_destination_bigquery_denormalized" "my_destination_bigquerydenormalized" {
  configuration = {
    big_query_client_buffer_size_mb = 15
    credentials_json                = "...my_credentials_json..."
    dataset_id                      = "...my_dataset_id..."
    dataset_location                = "europe-west9"
    loading_method = {
      destination_bigquery_denormalized_loading_method_gcs_staging = {
        credential = {
          destination_bigquery_denormalized_loading_method_gcs_staging_credential_hmac_key = {
            hmac_key_access_id = "1234567890abcdefghij1234"
            hmac_key_secret    = "1234567890abcdefghij1234567890ABCDEFGHIJ"
          }
        }
        file_buffer_count        = 10
        gcs_bucket_name          = "airbyte_sync"
        gcs_bucket_path          = "data_sync/test"
        keep_files_in_gcs_bucket = "Keep all tmp files in GCS"
      }
    }
    project_id = "...my_project_id..."
  }
  name         = "Frankie Runolfsson"
  workspace_id = "cb44c87d-9163-4ca2-a92d-142842c5e975"
}