resource "airbyte_destination_bigquery" "my_destination_bigquery" {
    configuration = {
        big_query_client_buffer_size_mb = 15
        credentials_json = "...my_credentials_json..."
        dataset_id = "...my_dataset_id..."
        dataset_location = "us-east3"
        destination_type = "bigquery"
        loading_method =     {
                credential =     {
                        credential_type = "HMAC_KEY"
                        hmac_key_access_id = "1234567890abcdefghij1234"
                        hmac_key_secret = "1234567890abcdefghij1234567890ABCDEFGHIJ"
                    }
                file_buffer_count = 10
                gcs_bucket_name = "airbyte_sync"
                gcs_bucket_path = "data_sync/test"
                keep_files_in_gcs_bucket = "Keep all tmp files in GCS"
                method = "GCS Staging"
            }
        project_id = "...my_project_id..."
        transformation_priority = "batch"
    }
            name = "Francisco Gleason"
            workspace_id = "9802d502-a94b-4b4f-a3c9-69e9a3efa77d"
        }