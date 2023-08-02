resource "airbyte_source_public_apis" "my_source_publicapis" {
  configuration = {
    source_type = "public-apis"
  }
  name         = "Marion Hamill"
  secret_id    = "...my_secretId..."
  workspace_id = "6fa22063-6982-4855-bcb1-0006bef4921e"
}