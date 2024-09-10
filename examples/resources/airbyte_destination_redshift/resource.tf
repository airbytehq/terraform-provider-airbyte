resource "airbyte_destination_redshift" "my_destination_redshift" {
  configuration = {
    database            = "...my_database..."
    disable_type_dedupe = true
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
        access_key_id      = "...my_access_key_id..."
        file_name_pattern  = "{timestamp}"
        purge_staging_data = false
        s3_bucket_name     = "airbyte.staging"
        s3_bucket_path     = "data_sync/test"
        s3_bucket_region   = "eu-south-2"
        secret_access_key  = "...my_secret_access_key..."
      }
    }
    username = "Devante10"
  }
  definition_id = "a29aaf3c-6807-40ec-a153-7042295e6e54"
  name          = "Ms. Edmund Douglas III"
  workspace_id  = "586b7399-0fea-469b-aba7-dc7cde8f8d83"
}