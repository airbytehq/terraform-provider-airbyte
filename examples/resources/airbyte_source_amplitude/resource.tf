resource "airbyte_source_amplitude" "my_source_amplitude" {
  configuration = {
    api_key            = "...my_api_key..."
    data_region        = "Standard Server"
    request_time_range = 10
    secret_key         = "...my_secret_key..."
    source_type        = "amplitude"
    start_date         = "2021-01-25T00:00:00Z"
  }
  name         = "Russell Toy"
  secret_id    = "...my_secret_id..."
  workspace_id = "27537a8c-d9e7-4319-8177-d525f77b114e"
}