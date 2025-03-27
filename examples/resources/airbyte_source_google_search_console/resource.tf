resource "airbyte_source_google_search_console" "my_source_googlesearchconsole" {
  configuration = {
    authorization = {
      service_account_key_authentication = {
        email                = "...my_email..."
        service_account_info = "{ \"type\": \"service_account\", \"project_id\": YOUR_PROJECT_ID, \"private_key_id\": YOUR_PRIVATE_KEY, ... }"
      }
    }
    custom_reports_array = [
      {
        dimensions = [
        ]
        name = "...my_name..."
      }
    ]
    data_state = "final"
    end_date   = "2021-12-12"
    site_urls = [
      "..."
    ]
    start_date = "2022-02-19"
  }
  definition_id = "38737380-4b05-400b-8478-4fc78e02be0f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6406adf4-523d-4b9e-8f60-e386f18bd02c"
}