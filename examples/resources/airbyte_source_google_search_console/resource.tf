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
          "country",
        ]
        name = "Peter Luettgen"
      },
    ]
    data_state = "final"
    end_date   = "2021-12-12"
    site_urls = [
      "...",
    ]
    start_date = "2020-11-18"
  }
  definition_id = "bbdb3119-64f9-49d6-b745-afb65f1720bd"
  name          = "Harriet Kiehn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "19162647-e680-4e44-97c6-f4b509c8206a"
}