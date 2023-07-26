resource "airbyte_source_outreach" "my_source_outreach" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    redirect_uri  = "...my_redirect_uri..."
    refresh_token = "...my_refresh_token..."
    source_type   = "outreach"
    start_date    = "2020-11-16T00:00:00Z"
  }
  name         = "Leslie Hartmann IV"
  workspace_id = "6cc7abf6-16ea-45c7-9641-934b90f2e09d"
}