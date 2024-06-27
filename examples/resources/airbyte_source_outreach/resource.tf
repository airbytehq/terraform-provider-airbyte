resource "airbyte_source_outreach" "my_source_outreach" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    redirect_uri  = "...my_redirect_uri..."
    refresh_token = "...my_refresh_token..."
    start_date    = "2020-11-16T00:00:00Z"
  }
  definition_id = "61b1c883-a572-4712-98f3-b6433cb82b32"
  name          = "Sammy Aufderhar"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d9a9d8ba-9b0d-4f86-903c-4743ee79bd13"
}