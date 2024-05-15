resource "airbyte_source_posthog" "my_source_posthog" {
  configuration = {
    api_key          = "...my_api_key..."
    base_url         = "https://posthog.example.com"
    events_time_step = 30
    start_date       = "2021-01-01T00:00:00Z"
  }
  definition_id = "9bc9d1c8-8f1e-4e12-b8a7-db098a741266"
  name          = "Armando Kirlin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "89094efa-67bb-4ea9-b5a3-5d1bd0fb6321"
}