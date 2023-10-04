resource "airbyte_source_google_analytics_v4" "my_source_googleanalyticsv4" {
  configuration = {
    credentials = {
      source_google_analytics_v4_credentials_authenticate_via_google_oauth = {
        access_token  = "...my_access_token..."
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    custom_reports = "...my_custom_reports..."
    start_date     = "2020-06-01"
    view_id        = "...my_view_id..."
    window_in_days = 30
  }
  name         = "Christopher Kulas"
  secret_id    = "...my_secret_id..."
  workspace_id = "6bd0cbf5-314e-4ea0-ba21-aa37367271c7"
}