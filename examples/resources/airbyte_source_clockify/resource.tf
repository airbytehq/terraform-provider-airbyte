resource "airbyte_source_clockify" "my_source_clockify" {
  configuration = {
    api_key      = "...my_api_key..."
    api_url      = "...my_api_url..."
    workspace_id = "...my_workspace_id..."
  }
  definition_id = "4ace41dc-5b42-4f2a-a28e-88647f2d4275"
  name          = "Sue Adams"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c1c65661-b248-45a0-a023-8eba1361d3c0"
}