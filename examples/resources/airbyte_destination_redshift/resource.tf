resource "airbyte_destination_redshift" "my_destination_redshift" {
  configuration = {
    database            = "...my_database..."
    disable_type_dedupe = false
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
        s3_bucket_region   = "eu-west-1"
        secret_access_key  = "...my_secret_access_key..."
      }
    }
    username = "Dario.Brakus57"
  }
  definition_id = "aaf3c680-70ec-4a15-b704-2295e6e54dc3"
  name          = "Jessie Brown"
  workspace_id  = "86b73990-fea6-49be-ba7d-c7cde8f8d839"
}