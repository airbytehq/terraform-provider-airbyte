resource "airbyte_source_posthog" "my_source_posthog" {
  configuration = {
    api_key          = "...my_api_key..."
    base_url         = "https://posthog.example.com"
    events_time_step = 10
    start_date       = "2021-01-01T00:00:00Z"
  }
  definition_id = "aababee9-d637-48e7-a43c-021bc073abf4"
  name          = "Edmond Thiel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "414e5a60-3e6b-43fc-a03d-92cb14510264"
}