resource "airbyte_source_smartengage" "my_source_smartengage" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "smartengage"
  }
  name         = "Guillermo Kunze"
  secret_id    = "...my_secret_id..."
  workspace_id = "d4319439-8c78-43c9-a398-ed3d3ab7ca3c"
}