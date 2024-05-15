resource "airbyte_source_pexels_api" "my_source_pexelsapi" {
  configuration = {
    api_key     = "...my_api_key..."
    color       = "red"
    locale      = "pt-BR"
    orientation = "landscape"
    query       = "oceans"
    size        = "small"
  }
  definition_id = "2b6d5805-ab7b-4933-9a5d-dafad6ab5ec8"
  name          = "Neal Nitzsche"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8d2abfdc-0f33-4811-9dad-7d79aa2af68e"
}