resource "airbyte_source_google_analytics_data_api" "my_source_googleanalyticsdataapi" {
  configuration = {
    credentials = {
      source_google_analytics_data_api_credentials_authenticate_via_google_oauth_ = {
        access_token  = "...my_access_token..."
        auth_type     = "Client"
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    custom_reports         = "...my_custom_reports..."
    date_ranges_start_date = "2021-01-01"
    property_id            = "5729978930"
    source_type            = "google-analytics-data-api"
    window_in_days         = 364
  }
  name         = "Juanita Collier"
  secret_id    = "...my_secret_id..."
  workspace_id = "0e9b200c-e78a-41bd-8fb7-a0a116ce723d"
}