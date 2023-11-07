resource "airbyte_source_dremio" "my_source_dremio" {
  configuration = {
    api_key  = "...my_api_key..."
    base_url = "...my_base_url..."
  }
  name         = "Bessie Towne"
  secret_id    = "...my_secret_id..."
  workspace_id = "1b638bd6-48d5-4481-8afe-b93d4bbde9f2"
}