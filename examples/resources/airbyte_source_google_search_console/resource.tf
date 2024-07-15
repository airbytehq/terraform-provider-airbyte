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
        name = "Allen Jenkins MD"
      },
    ]
    data_state = "all"
    end_date   = "2021-12-12"
    site_urls = [
      "...",
    ]
    start_date = "2022-03-09"
  }
  definition_id = "9c174fee-4145-4562-9275-76235e52bb8a"
  name          = "Roosevelt Lebsack"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2a7f940d-ec44-4e21-adff-8929e4d23a00"
}