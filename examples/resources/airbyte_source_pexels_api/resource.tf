resource "airbyte_source_pexels_api" "my_source_pexelsapi" {
  configuration = {
    api_key     = "...my_api_key..."
    color       = "orange"
    locale      = "en-US"
    orientation = "square"
    query       = "oceans"
    size        = "small"
  }
  name         = "Genevieve Corwin"
  secret_id    = "...my_secret_id..."
  workspace_id = "4eff211a-dfc7-421d-91f8-0239a929660c"
}