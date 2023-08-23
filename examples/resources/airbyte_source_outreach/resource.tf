resource "airbyte_source_outreach" "my_source_outreach" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    redirect_uri  = "...my_redirect_uri..."
    refresh_token = "...my_refresh_token..."
    source_type   = "outreach"
    start_date    = "2020-11-16T00:00:00Z"
  }
  name         = "Rosemarie Schulist"
  secret_id    = "...my_secret_id..."
  workspace_id = "46aa1cfd-6d82-48da-8131-91129646645c"
}