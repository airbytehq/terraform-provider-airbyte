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
    custom_reports_array = [
      {
        dimensions = [
          "page",
        ]
        name = "Judith Crona"
      },
    ]
    data_state = "final"
    end_date   = "2021-12-12"
    site_urls = [
      "...",
    ]
    start_date = "2022-06-01"
  }
  definition_id = "155f731c-6e6b-4c1c-af16-6aee78925477"
  name          = "Jimmy Lockman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "53022ba4-aed2-4995-8663-b6d13c6e3bbb"
}