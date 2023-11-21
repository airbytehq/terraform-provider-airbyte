resource "airbyte_source_posthog" "my_source_posthog" {
  configuration = {
    api_key          = "...my_api_key..."
    base_url         = "https://posthog.example.com"
    events_time_step = 5
    start_date       = "2021-01-01T00:00:00Z"
  }
  definition_id = "07521b21-ea9b-4c9d-9c88-f1ee12f8a7db"
  name          = "Daisy Ledner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "41266a87-d389-4094-afa6-7bbea9f5a35d"
}