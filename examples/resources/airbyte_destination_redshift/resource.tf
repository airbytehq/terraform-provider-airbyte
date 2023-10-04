resource "airbyte_destination_redshift" "my_destination_redshift" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5439
    schema          = "public"
    tunnel_method = {
      destination_redshift_ssh_tunnel_method_no_tunnel = {}
    }
    uploading_method = {
      destination_redshift_uploading_method_s3_staging = {
        access_key_id = "...my_access_key_id..."
        encryption = {
          destination_redshift_uploading_method_s3_staging_encryption_aes_cbc_envelope_encryption = {
            key_encrypting_key = "...my_key_encrypting_key..."
          }
        }
        file_buffer_count  = 10
        file_name_pattern  = "{sync_id}"
        purge_staging_data = true
        s3_bucket_name     = "airbyte.staging"
        s3_bucket_path     = "data_sync/test"
        s3_bucket_region   = "ap-northeast-2"
        secret_access_key  = "...my_secret_access_key..."
      }
    }
    username = "Lucinda.Heathcote"
  }
  name         = "Samantha O'Reilly"
  workspace_id = "180123f0-d76f-4b78-bf74-fa22de12791b"
}