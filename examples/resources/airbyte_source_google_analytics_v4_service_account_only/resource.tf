resource "airbyte_source_google_analytics_v4_service_account_only" "my_source_googleanalyticsv4serviceaccountonly" {
  configuration = {
    credentials = {
      service_account_key_authentication = {
        credentials_json = "{ \"type\": \"service_account\", \"project_id\": YOUR_PROJECT_ID, \"private_key_id\": YOUR_PRIVATE_KEY, ... }"
      }
    }
    custom_reports = "...my_custom_reports..."
    end_date       = "2020-06-01"
    start_date     = "2020-06-01"
    view_id        = "...my_view_id..."
    window_in_days = 200
  }
  definition_id = "f0f35d94-2704-4e93-abb3-6d8aaea00f0c"
  name          = "Kara Macejkovic"
  secret_id     = "...my_secret_id..."
  workspace_id  = "89e625ba-e876-4a32-9c31-e1b4b67e953b"
}