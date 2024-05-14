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
          "device",
        ]
        name = "Grace Rodriguez"
      },
    ]
    data_state = "all"
    end_date   = "2021-12-12"
    site_urls = [
      "...",
    ]
    start_date = "2021-02-09"
  }
  definition_id = "2fd145f4-8d36-4313-9855-39f352d3206a"
  name          = "Rudolph Dickinson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "24a60d40-134e-4588-b6cb-030a128ae06a"
}