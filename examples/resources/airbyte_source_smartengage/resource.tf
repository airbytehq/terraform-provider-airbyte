resource "airbyte_source_smartengage" "my_source_smartengage" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "smartengage"
  }
  name         = "Catherine Smith"
  secret_id    = "...my_secretId..."
  workspace_id = "f1e3af15-920c-490d-9b49-01f2bd89c8a3"
}