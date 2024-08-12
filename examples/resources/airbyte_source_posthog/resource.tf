resource "airbyte_source_posthog" "my_source_posthog" {
  configuration = {
    api_key          = "...my_api_key..."
    base_url         = "https://posthog.example.com"
    events_time_step = 5
    start_date       = "2021-01-01T00:00:00Z"
  }
  definition_id = "b48bf3f0-e963-41eb-8afa-a2ee7a1e0cb6"
  name          = "Ms. Jenny Konopelski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b91e1261-00f0-49eb-b06b-b016ea0ac6bf"
}