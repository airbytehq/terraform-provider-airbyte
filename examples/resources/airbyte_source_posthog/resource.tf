resource "airbyte_source_posthog" "my_source_posthog" {
  configuration = {
    api_key          = "...my_api_key..."
    base_url         = "https://posthog.example.com"
    events_time_step = 30
    start_date       = "2021-01-01T00:00:00Z"
  }
  definition_id = "cdfc0002-7ae8-47de-aaf0-87145ba046db"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a4d96fbc-abac-4931-8655-f3ec0b51634d"
}