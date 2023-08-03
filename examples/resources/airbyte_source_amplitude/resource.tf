resource "airbyte_source_amplitude" "my_source_amplitude" {
  configuration = {
    api_key            = "...my_api_key..."
    data_region        = "Standard Server"
    request_time_range = 0
    secret_key         = "...my_secret_key..."
    source_type        = "amplitude"
    start_date         = "2021-01-25T00:00:00Z"
  }
  name         = "Flora Renner"
  workspace_id = "48b656bc-db35-4ff2-a4b2-7537a8cd9e73"
}