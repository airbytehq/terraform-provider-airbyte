resource "airbyte_source_outreach" "my_source_outreach" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    redirect_uri  = "...my_redirect_uri..."
    refresh_token = "...my_refresh_token..."
    source_type   = "outreach"
    start_date    = "2020-11-16T00:00:00Z"
  }
  name         = "Dr. Latoya McClure"
  secret_id    = "...my_secretId..."
  workspace_id = "e09d19d2-fc2f-49e2-a105-944b935d237a"
}