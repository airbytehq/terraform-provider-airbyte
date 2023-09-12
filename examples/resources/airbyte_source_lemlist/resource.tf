resource "airbyte_source_lemlist" "my_source_lemlist" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "lemlist"
  }
  name         = "Gene Herman"
  secret_id    = "...my_secret_id..."
  workspace_id = "72dc4077-d0cc-43f4-88ef-c15ceb4d6e1e"
}