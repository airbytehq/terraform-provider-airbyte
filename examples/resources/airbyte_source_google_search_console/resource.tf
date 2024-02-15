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
          "query",
        ]
        name = "Roosevelt Waters"
      },
    ]
    data_state = "all"
    end_date   = "2021-12-12"
    site_urls = [
      "...",
    ]
    start_date = "2022-05-23"
  }
  definition_id = "4c11e4e9-93d2-4947-8281-bb54dff6cf9b"
  name          = "Velma Volkman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2888b6bd-e251-454a-92da-80f2bfa49853"
}