resource "airbyte_destination_starburst_galaxy" "my_destination_starburstgalaxy" {
  configuration = {
    accept_terms        = true
    catalog             = "sample_s3_catalog"
    catalog_schema      = "public"
    password            = "password"
    port                = "443"
    purge_staging_table = false
    server_hostname     = "abc-12345678-wxyz.trino.galaxy-demo.io"
    staging_object_store = {
      amazon_s3 = {
        object_store_type    = "S3"
        s3_access_key_id     = "A012345678910EXAMPLE"
        s3_bucket_name       = "airbyte_staging"
        s3_bucket_path       = "temp_airbyte__sync/test"
        s3_bucket_region     = "ap-southeast-2"
        s3_secret_access_key = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
      }
    }
    username = "user@example.com"
  }
  definition_id = "8654fbdb-0dae-4053-92ee-ecc8194c7441"
  name          = "...my_name..."
  workspace_id  = "184f0ea2-e6c1-475a-88eb-30413bba91fd"
}