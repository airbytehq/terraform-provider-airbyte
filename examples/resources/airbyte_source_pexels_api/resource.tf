resource "airbyte_source_pexels_api" "my_source_pexelsapi" {
  configuration = {
    api_key     = "...my_api_key..."
    color       = "orange"
    locale      = "en-US"
    orientation = "landscape"
    query       = "people"
    size        = "small"
    source_type = "pexels-api"
  }
  name         = "Wilbert Cummings"
  secret_id    = "...my_secret_id..."
  workspace_id = "c7b66a1f-30c7-43df-9b67-19890f42a4bb"
}