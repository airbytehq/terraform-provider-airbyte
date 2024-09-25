resource "airbyte_destination_redshift" "my_destination_redshift" {
  configuration = {
    database            = "...my_database..."
    disable_type_dedupe = true
    drop_cascade        = false
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
        file_name_pattern  = "{date}"
        purge_staging_data = true
        s3_bucket_name     = "airbyte.staging"
        s3_bucket_path     = "data_sync/test"
        s3_bucket_region   = "ap-south-1"
        secret_access_key  = "...my_secret_access_key..."
      }
    }
    username = "Jacky18"
  }
  definition_id = "295e6e54-dc30-4616-986b-73990fea69be"
  name          = "Hubert Kub"
  workspace_id  = "7cde8f8d-8392-4aab-95fb-458bad9ea767"
}