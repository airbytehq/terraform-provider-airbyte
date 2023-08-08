resource "airbyte_source_pexels_api" "my_source_pexelsapi" {
  configuration = {
    api_key     = "...my_api_key..."
    color       = "red"
    locale      = "en-US"
    orientation = "square"
    query       = "people"
    size        = "small"
    source_type = "pexels-api"
  }
  name         = "Jean Denesik"
  secret_id    = "...my_secret_id..."
  workspace_id = "46645c1d-81f2-4904-af56-9b7aff0ea221"
}