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
  definition_id = "b676fb73-1c6d-4524-9e98-21d4fc03242c"
  name          = "Kristopher Cormier"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3a0d30eb-91c3-4df2-9934-9552dc8258f3"
}