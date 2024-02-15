resource "airbyte_destination_redshift" "my_destination_redshift" {
  configuration = {
    database                               = "...my_database..."
    disable_type_dedupe                    = true
    enable_incremental_final_table_updates = true
    host                                   = "...my_host..."
    jdbc_url_params                        = "...my_jdbc_url_params..."
    password                               = "...my_password..."
    port                                   = 5439
    raw_data_schema                        = "...my_raw_data_schema..."
    schema                                 = "public"
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
        file_buffer_count  = 10
        file_name_pattern  = "{date}"
        purge_staging_data = true
        s3_bucket_name     = "airbyte.staging"
        s3_bucket_path     = "data_sync/test"
        s3_bucket_region   = "sa-east-1"
        secret_access_key  = "...my_secret_access_key..."
      }
    }
    username = "Tatyana.Spinka"
  }
  definition_id = "f8e06ef6-fed3-4651-a7d5-496735da213c"
  name          = "Milton Ondricka"
  workspace_id  = "9fef8f53-876e-43de-b0a8-6e4df19faac8"
}