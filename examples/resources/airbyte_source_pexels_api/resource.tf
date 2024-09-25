resource "airbyte_source_pexels_api" "my_source_pexelsapi" {
  configuration = {
    api_key     = "...my_api_key..."
    color       = "orange"
    locale      = "en-US"
    orientation = "square"
    query       = "oceans"
    size        = "large"
  }
  definition_id = "89bbf5d2-4f5b-4116-8e1d-c4a01d44fb97"
  name          = "Frances Armstrong"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d0de91ea-a4a7-40c9-8b87-0eb98050c39e"
}