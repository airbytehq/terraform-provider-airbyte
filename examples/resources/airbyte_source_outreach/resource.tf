resource "airbyte_source_outreach" "my_source_outreach" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    redirect_uri  = "...my_redirect_uri..."
    refresh_token = "...my_refresh_token..."
    start_date    = "2020-11-16T00:00:00Z"
  }
  name         = "Mr. Amber Wintheiser"
  secret_id    = "...my_secret_id..."
  workspace_id = "c84028fb-b0cd-4dcf-802e-3e6016546635"
}