resource "airbyte_source_google_analytics_data_api" "my_source_googleanalyticsdataapi" {
  configuration = {
    credentials = {
      access_token  = "...my_access_token..."
      auth_type     = "Client"
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
      refresh_token = "...my_refresh_token..."
    }
    custom_reports         = "...my_custom_reports..."
    date_ranges_start_date = "2022-09-08"
    property_id            = "...my_property_id..."
    source_type            = "google-analytics-data-api"
    window_in_days         = 30
  }
  name         = "Jose Raynor"
  workspace_id = "c0dbbddb-4847-408f-b4e3-91e6bc158c4c"
}