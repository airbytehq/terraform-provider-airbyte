resource "airbyte_destination_bigquery" "my_destination_bigquery" {
  configuration = {
    big_query_client_buffer_size_mb = 15
    credentials_json                = "...my_credentials_json..."
    dataset_id                      = "...my_dataset_id..."
    dataset_location                = "australia-southeast2"
    destination_type                = "bigquery"
    loading_method = {
      destination_bigquery_loading_method_gcs_staging = {
        credential = {
          destination_bigquery_loading_method_gcs_staging_credential_hmac_key = {
            credential_type    = "HMAC_KEY"
            hmac_key_access_id = "1234567890abcdefghij1234"
            hmac_key_secret    = "1234567890abcdefghij1234567890ABCDEFGHIJ"
          }
        }
        file_buffer_count        = 10
        gcs_bucket_name          = "airbyte_sync"
        gcs_bucket_path          = "data_sync/test"
        keep_files_in_gcs_bucket = "Delete all tmp files from GCS"
        method                   = "GCS Staging"
      }
    }
    project_id              = "...my_project_id..."
    raw_data_dataset        = "...my_raw_data_dataset..."
    transformation_priority = "batch"
    use_1s1t_format         = false
  }
  name         = "Alison Mann"
  workspace_id = "488e1e91-e450-4ad2-abd4-4269802d502a"
}