resource "airbyte_source_lokalise" "my_source_lokalise" {
  configuration = {
    api_key    = "...my_api_key..."
    project_id = "...my_project_id..."
  }
  name         = "Chris Cronin"
  secret_id    = "...my_secret_id..."
  workspace_id = "1c9f9cba-a542-4e6e-8809-61d84c3fbc24"
}