resource "airbyte_source_google_search_console" "my_source_googlesearchconsole" {
  configuration = {
    authorization = {
      access_token  = "...my_access_token..."
      auth_type     = "Client"
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
      refresh_token = "...my_refresh_token..."
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
  name         = "Johanna Lueilwitz DVM"
  workspace_id = "b1bd23fd-b14d-4b6b-a5a6-85998e22ae20"
}