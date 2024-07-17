resource "airbyte_destination_redshift" "my_destination_redshift" {
  configuration = {
    database            = "...my_database..."
    disable_type_dedupe = false
    drop_cascade        = true
    host                = "...my_host..."
    jdbc_url_params     = "...my_jdbc_url_params..."
    password            = "...my_password..."
    port                = 5439
    raw_data_schema     = "...my_raw_data_schema..."
    schema              = "public"
    tunnel_method = {
      no_tunnel = {}
    }
    uploading_method = {
      awss3_staging = {
        access_key_id = "...my_access_key_id..."
        encryption = {
          aescbc_envelope_encryption = {
            key_encrypting_key = "...my_key_encrypting_key..."
          }
        }
        file_name_pattern  = "{timestamp}"
        purge_staging_data = false
        s3_bucket_name     = "airbyte.staging"
        s3_bucket_path     = "data_sync/test"
        s3_bucket_region   = "eu-central-2"
        secret_access_key  = "...my_secret_access_key..."
      }
    }
    username = "Clark65"
  }
  definition_id = "ab15fb45-8bad-49ea-b671-d5852a459de5"
  name          = "Jessica Runolfsdottir"
  workspace_id  = "420a295e-5c09-4962-877b-187a09875344"
}