resource "airbyte_source_lokalise" "my_source_lokalise" {
  configuration = {
    api_key     = "...my_api_key..."
    project_id  = "...my_project_id..."
    source_type = "lokalise"
  }
  name         = "Bernard Gottlieb"
  secret_id    = "...my_secret_id..."
  workspace_id = "573fecd4-7353-4f63-8820-9379aa69cd5f"
}