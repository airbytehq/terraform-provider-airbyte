resource "airbyte_source_luma" "my_source_luma" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "41f13919-c925-4e38-a517-a80112166a5e"
  name          = "Kyle Jones"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bce2e77b-bcce-4f58-8ac5-48be8a7a9dbf"
}