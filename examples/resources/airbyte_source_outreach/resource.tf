resource "airbyte_source_outreach" "my_source_outreach" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    redirect_uri  = "...my_redirect_uri..."
    refresh_token = "...my_refresh_token..."
    start_date    = "2020-11-16T00:00:00Z"
  }
  definition_id = "18021619-8723-463e-89a2-aae62d9d7702"
  name          = "Tanya Hand"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6995c576-52df-4199-822b-3629976b741d"
}