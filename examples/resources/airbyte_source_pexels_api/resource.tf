resource "airbyte_source_pexels_api" "my_source_pexelsapi" {
  configuration = {
    api_key     = "...my_api_key..."
    color       = "orange"
    locale      = "pt-BR"
    orientation = "square"
    query       = "oceans"
    size        = "large"
  }
  definition_id = "b5865238-4bdb-4821-b9c8-efa40dc207c5"
  name          = "Raquel Jakubowski Sr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "11e1fcb2-6b90-4cc0-9f94-1919892a209c"
}