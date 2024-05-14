resource "airbyte_source_posthog" "my_source_posthog" {
  configuration = {
    api_key          = "...my_api_key..."
    base_url         = "https://posthog.example.com"
    events_time_step = 5
    start_date       = "2021-01-01T00:00:00Z"
  }
  definition_id = "f33bbc2f-8e75-4b95-ae5d-d11c77a4e3aa"
  name          = "Nadine Breitenberg"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4fcd7d93-9b8b-46b2-8092-0aa8be086075"
}