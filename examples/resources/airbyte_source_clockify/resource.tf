resource "airbyte_source_clockify" "my_source_clockify" {
  configuration = {
    api_key      = "...my_api_key..."
    api_url      = "...my_api_url..."
    source_type  = "clockify"
    workspace_id = "...my_workspace_id..."
  }
  name         = "Angela Schaefer"
  secret_id    = "...my_secret_id..."
  workspace_id = "76ffb901-c6ec-4bb4-a243-cf789ffafeda"
}