resource "airbyte_source_clockify" "my_source_clockify" {
  configuration = {
    api_key      = "...my_api_key..."
    api_url      = "...my_api_url..."
    source_type  = "clockify"
    workspace_id = "...my_workspace_id..."
  }
  name         = "Guy Beier"
  secret_id    = "...my_secret_id..."
  workspace_id = "2ec09ff8-f0f8-416f-b347-7c13e902c141"
}