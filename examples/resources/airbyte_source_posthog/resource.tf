resource "airbyte_source_posthog" "my_source_posthog" {
  configuration = {
    api_key          = "...my_api_key..."
    base_url         = "https://posthog.example.com"
    events_time_step = 30
    source_type      = "posthog"
    start_date       = "2021-01-01T00:00:00Z"
  }
  name         = "Terence Wisozk"
  secret_id    = "...my_secret_id..."
  workspace_id = "21ec2053-b749-4366-ac8e-e0f2bf19588d"
}