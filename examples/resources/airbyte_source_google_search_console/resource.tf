resource "airbyte_source_google_search_console" "my_source_googlesearchconsole" {
  configuration = {
    authorization = {
      o_auth = {
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
          "page",
        ]
        name = "Randolph Stanton"
      },
    ]
    data_state = "final"
    end_date   = "2021-12-12"
    site_urls = [
      "...",
    ]
    start_date = "2021-06-12"
  }
  definition_id = "5ec21a9a-b567-4f13-877e-51fa773fcf1a"
  name          = "Connie Baumbach"
  secret_id     = "...my_secret_id..."
  workspace_id  = "082909d9-7bfa-4bba-9367-1a9ca1d9c174"
}