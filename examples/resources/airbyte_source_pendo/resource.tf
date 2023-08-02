resource "airbyte_source_pendo" "my_source_pendo" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "pendo"
  }
  name         = "Forrest Abshire"
  secret_id    = "...my_secretId..."
  workspace_id = "4a184d76-d971-4fc8-a0c6-5b037bb8e0cc"
}