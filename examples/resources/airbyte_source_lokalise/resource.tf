resource "airbyte_source_lokalise" "my_source_lokalise" {
  configuration = {
    api_key     = "...my_api_key..."
    project_id  = "...my_project_id..."
    source_type = "lokalise"
  }
  name         = "Marcella McKenzie Sr."
  secret_id    = "...my_secret_id..."
  workspace_id = "f0ea930b-69f7-4ac2-b72f-885009049116"
}