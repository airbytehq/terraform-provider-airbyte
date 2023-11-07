resource "airbyte_source_asana" "my_source_asana" {
  configuration = {
    credentials = {
      authenticate_via_asana_oauth = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
  }
  name         = "Melissa VonRueden"
  secret_id    = "...my_secret_id..."
  workspace_id = "15370422-95e6-4e54-9c30-616586b73990"
}