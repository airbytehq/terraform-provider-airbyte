resource "airbyte_source_pexels_api" "my_source_pexelsapi" {
  configuration = {
    api_key     = "...my_api_key..."
    color       = "red"
    locale      = "pt-BR"
    orientation = "landscape"
    query       = "people"
    size        = "large"
    source_type = "pexels-api"
  }
  name         = "Terrell Cremin"
  workspace_id = "5dddb46a-a1cf-4d6d-828d-a01319112964"
}