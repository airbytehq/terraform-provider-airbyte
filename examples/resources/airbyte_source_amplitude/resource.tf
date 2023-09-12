resource "airbyte_source_amplitude" "my_source_amplitude" {
  configuration = {
    api_key            = "...my_api_key..."
    data_region        = "Standard Server"
    request_time_range = 1
    secret_key         = "...my_secret_key..."
    source_type        = "amplitude"
    start_date         = "2021-01-25T00:00:00Z"
  }
  name         = "Robin Bednar"
  secret_id    = "...my_secret_id..."
  workspace_id = "116db995-45fc-495f-a889-70e189dbb30f"
}