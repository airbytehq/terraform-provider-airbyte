resource "airbyte_source_posthog" "my_source_posthog" {
  configuration = {
    api_key          = "...my_api_key..."
    base_url         = "https://posthog.example.com"
    events_time_step = 5
    start_date       = "2021-01-01T00:00:00Z"
  }
  definition_id = "c6bfae2b-40c1-473d-8d61-133ddb2a9593"
  name          = "Rosalie Walter Jr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "62e7b59a-4e78-4152-8bd2-66e4c12d05e7"
}