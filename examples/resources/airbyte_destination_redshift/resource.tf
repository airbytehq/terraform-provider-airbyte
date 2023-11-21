resource "airbyte_destination_redshift" "my_destination_redshift" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5439
    schema          = "public"
    tunnel_method = {
      destination_redshift_no_tunnel = {}
    }
    uploading_method = {
      s3_staging = {
        access_key_id = "...my_access_key_id..."
        encryption = {
          aes_cbc_envelope_encryption = {
            key_encrypting_key = "...my_key_encrypting_key..."
          }
        }
        file_buffer_count  = 10
        file_name_pattern  = "{date:yyyy_MM}"
        purge_staging_data = true
        s3_bucket_name     = "airbyte.staging"
        s3_bucket_path     = "data_sync/test"
        s3_bucket_region   = "eu-west-1"
        secret_access_key  = "...my_secret_access_key..."
      }
    }
    username = "Rollin_Ernser87"
  }
  definition_id = "1f9eaf9a-8e21-457a-8560-c89e77fd0c20"
  name          = "Linda Langworth"
  workspace_id  = "396de60f-942f-4937-a3c5-9508dd11c7ed"
}