resource "airbyte_source_outreach" "my_source_outreach" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    redirect_uri  = "...my_redirect_uri..."
    refresh_token = "...my_refresh_token..."
    start_date    = "2020-11-16T00:00:00Z"
  }
  definition_id = "e9d0f84c-cbad-471d-ab03-8014a124b6e7"
  name          = "Phillip Bartoletti"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a37b0c99-2762-4a38-aa73-d79a85cb7246"
}