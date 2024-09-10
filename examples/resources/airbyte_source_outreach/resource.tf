resource "airbyte_source_outreach" "my_source_outreach" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    redirect_uri  = "...my_redirect_uri..."
    refresh_token = "...my_refresh_token..."
    start_date    = "2020-11-16T00:00:00Z"
  }
  definition_id = "5937ced0-062e-47b5-9a4e-78152cbd266e"
  name          = "Bernadette Carter"
  secret_id     = "...my_secret_id..."
  workspace_id  = "05e7f58d-4a06-425c-bff5-b31f2b9304d3"
}