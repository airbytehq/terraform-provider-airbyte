resource "airbyte_source_google_search_console" "my_source_googlesearchconsole" {
  configuration = {
    authorization = {
      source_google_search_console_authentication_type_o_auth = {
        access_token  = "...my_access_token..."
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    custom_reports = "...my_custom_reports..."
    custom_reports_array = [
      {
        dimensions = [
          "device",
        ]
        name = "Toni Botsford"
      },
    ]
    data_state = "all"
    end_date   = "2021-12-12"
    site_urls = [
      "...",
    ]
    start_date = "2021-10-13"
  }
  name         = "Dana Cronin"
  secret_id    = "...my_secret_id..."
  workspace_id = "a51fb73f-472f-42e8-bbfe-18227a33308d"
}