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
    date_ranges_start_date = "2022-05-22"
    property_id            = "...my_property_id..."
    source_type            = "google-analytics-data-api"
    window_in_days         = 364
  }
  name         = "Andrew Torphy"
  secret_id    = "...my_secret_id..."
  workspace_id = "c158c4c4-e545-499e-a342-260e9b200ce7"
}