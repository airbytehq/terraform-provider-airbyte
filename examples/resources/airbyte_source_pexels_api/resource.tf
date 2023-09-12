resource "airbyte_source_pexels_api" "my_source_pexelsapi" {
  configuration = {
    api_key     = "...my_api_key..."
    color       = "orange"
    locale      = "en-US"
    orientation = "landscape"
    query       = "oceans"
    size        = "small"
    source_type = "pexels-api"
  }
  name         = "Arnold Dooley"
  secret_id    = "...my_secret_id..."
  workspace_id = "63457150-9a8e-4870-93c5-a1f9c242c7b6"
}