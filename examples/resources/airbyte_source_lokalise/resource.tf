resource "airbyte_source_lokalise" "my_source_lokalise" {
  configuration = {
    api_key     = "...my_api_key..."
    project_id  = "...my_project_id..."
    source_type = "lokalise"
  }
  name         = "Al Emmerich"
  secret_id    = "...my_secret_id..."
  workspace_id = "afe81a88-f444-4457-bfec-d47353f63c82"
}