resource "airbyte_destination_redshift" "my_destination_redshift" {
    configuration = {
        database = "...my_database..."
        destination_type = "redshift"
        host = "...my_host..."
        jdbc_url_params = "...my_jdbc_url_params..."
        password = "...my_password..."
        port = 5439
        schema = "public"
        tunnel_method =     {
                tunnel_method = "NO_TUNNEL"
            }
        uploading_method =     {
                access_key_id = "...my_access_key_id..."
                encryption =     {
                        encryption_type = "aes_cbc_envelope"
                        key_encrypting_key = "...my_key_encrypting_key..."
                    }
                file_buffer_count = 10
                file_name_pattern = "{date}"
                method = "S3 Staging"
                purge_staging_data = false
                s3_bucket_name = "airbyte.staging"
                s3_bucket_path = "data_sync/test"
                s3_bucket_region = "ap-southeast-1"
                secret_access_key = "...my_secret_access_key..."
            }
        username = "Jaqueline.Buckridge"
    }
            name = "Emilio Wisoky PhD"
            workspace_id = "01747636-0a15-4db6-a660-659a1adeaab5"
        }