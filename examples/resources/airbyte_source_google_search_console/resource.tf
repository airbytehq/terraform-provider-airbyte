resource "airbyte_source_google_search_console" "my_source_googlesearchconsole" {
  configuration = {
    authorization = {
      source_google_search_console_o_auth = {
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
        name = "Ms. Randy Gorczany V"
      },
    ]
    data_state = "all"
    end_date   = "2021-12-12"
    site_urls = [
      "...",
    ]
    start_date = "2020-03-18"
  }
  definition_id = "165bc484-0e7f-4b5d-b254-77f370b0ec7c"
  name          = "Wendell Rempel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0cb9d8df-c27a-48c7-ac3e-b5dc55714db0"
}