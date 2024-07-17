resource "airbyte_source_pexels_api" "my_source_pexelsapi" {
  configuration = {
    api_key     = "...my_api_key..."
    color       = "red"
    locale      = "en-US"
    orientation = "square"
    query       = "oceans"
    size        = "large"
  }
  definition_id = "9252a784-d2d0-4f17-8747-5e2d6a49780b"
  name          = "Jack Swaniawski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "28c6eefe-59b7-42db-a240-7ce310da7633"
}