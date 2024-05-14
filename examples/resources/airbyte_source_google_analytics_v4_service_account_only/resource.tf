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
    window_in_days = 30
  }
  definition_id = "e6bf68e1-922d-4f28-ba61-4313a5231403"
  name          = "Lucia Schuppe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "82b3c164-c195-40da-b1eb-ecd9b5a75a7c"
}