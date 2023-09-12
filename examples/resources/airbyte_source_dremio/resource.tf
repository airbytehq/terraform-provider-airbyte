resource "airbyte_source_dremio" "my_source_dremio" {
  configuration = {
    api_key     = "...my_api_key..."
    base_url    = "...my_base_url..."
    source_type = "dremio"
  }
  name         = "Aaron Connelly"
  secret_id    = "...my_secret_id..."
  workspace_id = "2d309470-bf7a-44fa-87cf-535a6fae54eb"
}