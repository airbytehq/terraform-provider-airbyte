resource "airbyte_source_outreach" "my_source_outreach" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    redirect_uri  = "...my_redirect_uri..."
    refresh_token = "...my_refresh_token..."
    start_date    = "2020-11-16T00:00:00Z"
  }
  definition_id = "8a587702-2972-4e23-bec3-d2ab4198d2ef"
  name          = "Gordon Vandervort"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c931e7a7-2ef9-4ee2-ac4d-080cde039dd5"
}