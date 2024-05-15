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
        name = "Darren Rosenbaum"
      },
    ]
    data_state = "final"
    end_date   = "2021-12-12"
    site_urls = [
      "...",
    ]
    start_date = "2022-01-24"
  }
  definition_id = "5baddd27-47bb-4c7f-a417-09ce4fe165bc"
  name          = "Dr. Billie Hahn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fb5df254-77f3-470b-8ec7-c89bfb0cb9d8"
}