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
    custom_reports_array = [
      {
        dimensions = [
          "page",
        ]
        name = "Heidi Bernier"
      },
    ]
    data_state = "all"
    end_date   = "2021-12-12"
    site_urls = [
      "...",
    ]
    source_type = "google-search-console"
    start_date  = "2022-07-11"
  }
  name         = "Jordan Hilll"
  secret_id    = "...my_secret_id..."
  workspace_id = "90439d22-2465-4694-a240-7084f7ab37ce"
}