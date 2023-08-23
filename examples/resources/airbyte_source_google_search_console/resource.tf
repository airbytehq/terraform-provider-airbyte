resource "airbyte_source_google_search_console" "my_source_googlesearchconsole" {
  configuration = {
    authorization = {
      source_google_search_console_authentication_type_o_auth = {
        access_token  = "...my_access_token..."
        auth_type     = "Client"
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    custom_reports = "...my_custom_reports..."
    data_state     = "final"
    end_date       = "2021-12-12"
    site_urls = [
      "...",
    ]
    source_type = "google-search-console"
    start_date  = "2021-01-01"
  }
  name         = "Janie Swift PhD"
  secret_id    = "...my_secret_id..."
  workspace_id = "a16fc2b2-71a2-489c-97e8-54e90439d222"
}