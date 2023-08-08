resource "airbyte_source_lemlist" "my_source_lemlist" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "lemlist"
  }
  name         = "Jeanette Kutch"
  secret_id    = "...my_secret_id..."
  workspace_id = "4874c2d5-cc49-4722-b3e6-6bd8fe5d00b9"
}