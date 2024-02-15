resource "airbyte_source_pexels_api" "my_source_pexelsapi" {
  configuration = {
    api_key     = "...my_api_key..."
    color       = "red"
    locale      = "en-US"
    orientation = "square"
    query       = "people"
    size        = "large"
  }
  definition_id = "e1c87958-3a59-4a82-9531-0140178456a4"
  name          = "Jonathan Bode"
  secret_id     = "...my_secret_id..."
  workspace_id  = "de2c277a-8e23-488f-9012-0f62c51a2676"
}