resource "airbyte_source_dremio" "my_source_dremio" {
  configuration = {
    api_key     = "...my_api_key..."
    base_url    = "...my_base_url..."
    source_type = "dremio"
  }
  name         = "Lloyd Witting"
  secret_id    = "...my_secret_id..."
  workspace_id = "abd905a9-72e0-4567-a822-7b2d309470bf"
}