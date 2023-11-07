resource "airbyte_source_posthog" "my_source_posthog" {
  configuration = {
    api_key          = "...my_api_key..."
    base_url         = "https://posthog.example.com"
    events_time_step = 5
    start_date       = "2021-01-01T00:00:00Z"
  }
  name         = "Freda Kulas"
  secret_id    = "...my_secret_id..."
  workspace_id = "fcaa386d-a1d2-4ddf-8351-c49c68690051"
}