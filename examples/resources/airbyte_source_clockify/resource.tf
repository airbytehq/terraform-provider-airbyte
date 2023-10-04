resource "airbyte_source_clockify" "my_source_clockify" {
  configuration = {
    api_key      = "...my_api_key..."
    api_url      = "...my_api_url..."
    workspace_id = "...my_workspace_id..."
  }
  name         = "Jessie Hansen"
  secret_id    = "...my_secret_id..."
  workspace_id = "d11902ba-1888-4602-b1ad-193af491985c"
}