resource "airbyte_destination_redshift" "my_destination_redshift" {
  configuration = {
    database         = "...my_database..."
    destination_type = "redshift"
    host             = "...my_host..."
    jdbc_url_params  = "...my_jdbc_url_params..."
    password         = "...my_password..."
    port             = 5439
    schema           = "public"
    tunnel_method = {
      destination_redshift_ssh_tunnel_method_no_tunnel = {
        tunnel_method = "NO_TUNNEL"
      }
    }
    uploading_method = {
      destination_redshift_uploading_method_s3_staging = {
        access_key_id = "...my_access_key_id..."
        encryption = {
          destination_redshift_uploading_method_s3_staging_encryption_aes_cbc_envelope_encryption = {
            encryption_type    = "aes_cbc_envelope"
            key_encrypting_key = "...my_key_encrypting_key..."
          }
        }
        file_buffer_count  = 10
        file_name_pattern  = "{date}"
        method             = "S3 Staging"
        purge_staging_data = false
        s3_bucket_name     = "airbyte.staging"
        s3_bucket_path     = "data_sync/test"
        s3_bucket_region   = "ap-southeast-1"
        secret_access_key  = "...my_secret_access_key..."
      }
    }
    username = "Donavon.Koch"
  }
  name         = "Mrs. Melissa Osinski"
  workspace_id = "b6a66065-9a1a-4dea-ab58-51d6c645b08b"
}