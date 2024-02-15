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
  definition_id = "1709ce4f-e165-4bc4-840e-7fb5df25477f"
  name          = "Tanya Bailey DVM"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c7c89bfb-0cb9-4d8d-bc27-a8c72c3eb5dc"
}