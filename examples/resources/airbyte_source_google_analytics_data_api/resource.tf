resource "airbyte_source_google_analytics_data_api" "my_source_googleanalyticsdataapi" {
  configuration = {
    credentials = {
      source_google_analytics_data_api_credentials_authenticate_via_google_oauth = {
        access_token  = "...my_access_token..."
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    custom_reports         = "...my_custom_reports..."
    date_ranges_start_date = "2021-01-01"
    property_id            = "5729978930"
    window_in_days         = 60
  }
  name         = "Robin Shanahan"
  secret_id    = "...my_secret_id..."
  workspace_id = "d007e52a-2e43-496e-b403-ea2d50959a4f"
}