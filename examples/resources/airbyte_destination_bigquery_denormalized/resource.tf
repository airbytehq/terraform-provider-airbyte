resource "airbyte_destination_bigquery_denormalized" "my_destination_bigquerydenormalized" {
  configuration = {
    big_query_client_buffer_size_mb = 15
    credentials_json                = "...my_credentials_json..."
    dataset_id                      = "...my_dataset_id..."
    dataset_location                = "europe-west7"
    destination_type                = "bigquery-denormalized"
    loading_method = {
      destination_bigquery_denormalized_loading_method_gcs_staging = {
        credential = {
          destination_bigquery_denormalized_loading_method_gcs_staging_credential_hmac_key = {
            credential_type    = "HMAC_KEY"
            hmac_key_access_id = "1234567890abcdefghij1234"
            hmac_key_secret    = "1234567890abcdefghij1234567890ABCDEFGHIJ"
          }
        }
        file_buffer_count        = 10
        gcs_bucket_name          = "airbyte_sync"
        gcs_bucket_path          = "data_sync/test"
        keep_files_in_gcs_bucket = "Keep all tmp files in GCS"
        method                   = "GCS Staging"
      }
    }
    project_id = "...my_project_id..."
  }
  name         = "Francisco Windler"
  workspace_id = "c969e9a3-efa7-47df-b14c-d66ae395efb9"
}