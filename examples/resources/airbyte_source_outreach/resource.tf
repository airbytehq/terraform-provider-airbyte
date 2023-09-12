resource "airbyte_source_outreach" "my_source_outreach" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    redirect_uri  = "...my_redirect_uri..."
    refresh_token = "...my_refresh_token..."
    source_type   = "outreach"
    start_date    = "2020-11-16T00:00:00Z"
  }
  name         = "Kim Kirlin"
  secret_id    = "...my_secret_id..."
  workspace_id = "8e0cc885-187e-44de-84af-28c5dddb46aa"
}