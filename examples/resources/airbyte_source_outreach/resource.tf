resource "airbyte_source_outreach" "my_source_outreach" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    redirect_uri  = "...my_redirect_uri..."
    refresh_token = "...my_refresh_token..."
    start_date    = "2020-11-16T00:00:00Z"
  }
  definition_id = "ee79bd13-e204-4659-bbdc-56c2f2e20259"
  name          = "Mrs. Ramon Quitzon"
  secret_id     = "...my_secret_id..."
  workspace_id  = "98d3fc54-30ae-4066-94a9-1bbbc35ba892"
}