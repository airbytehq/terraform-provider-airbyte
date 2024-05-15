resource "airbyte_source_clockify" "my_source_clockify" {
  configuration = {
    api_key      = "...my_api_key..."
    api_url      = "...my_api_url..."
    workspace_id = "...my_workspace_id..."
  }
  definition_id = "b7573910-8618-4e91-845d-83c494a849cd"
  name          = "Amanda Kunze DVM"
  secret_id     = "...my_secret_id..."
  workspace_id  = "32c2e302-e6de-492b-be43-098446f9835e"
}