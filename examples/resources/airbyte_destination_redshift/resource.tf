resource "airbyte_destination_redshift" "my_destination_redshift" {
  configuration = {
    database            = "...my_database..."
    disable_type_dedupe = false
    drop_cascade        = false
    host                = "...my_host..."
    jdbc_url_params     = "...my_jdbc_url_params..."
    password            = "...my_password..."
    port                = 5439
    raw_data_schema     = "...my_raw_data_schema..."
    schema              = "public"
    tunnel_method = {
      ssh_key_authentication = {
        ssh_key     = "...my_ssh_key..."
        tunnel_host = "...my_tunnel_host..."
        tunnel_port = 22
        tunnel_user = "...my_tunnel_user..."
      }
    }
    uploading_method = {
      awss3_staging = {
        access_key_id      = "...my_access_key_id..."
        file_name_pattern  = "{date}"
        purge_staging_data = false
        s3_bucket_name     = "airbyte.staging"
        s3_bucket_path     = "data_sync/test"
        s3_bucket_region   = "eu-west-2"
        secret_access_key  = "...my_secret_access_key..."
      }
    }
    username = "...my_username..."
  }
  definition_id = "50bfb2e7-1ca1-4132-b623-8606f328175d"
  name          = "...my_name..."
  workspace_id  = "e25c2049-8986-4945-a3f6-604de181966d"
}