resource "airbyte_source_google_analytics_v4" "my_source_googleanalyticsv4" {
  configuration = {
    credentials = {
      source_google_analytics_v4_credentials_authenticate_via_google_oauth_ = {
        access_token  = "...my_access_token..."
        auth_type     = "Client"
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    custom_reports = "...my_custom_reports..."
    source_type    = "google-analytics-v4"
    start_date     = "2020-06-01"
    view_id        = "...my_view_id..."
    window_in_days = 120
  }
  name         = "Miss Harvey Nicolas Sr."
  secret_id    = "...my_secret_id..."
  workspace_id = "6ce723d4-097f-4a30-a9af-725b29122030"
}