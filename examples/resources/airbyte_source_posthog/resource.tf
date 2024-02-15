resource "airbyte_source_posthog" "my_source_posthog" {
  configuration = {
    api_key          = "...my_api_key..."
    base_url         = "https://posthog.example.com"
    events_time_step = 10
    start_date       = "2021-01-01T00:00:00Z"
  }
  definition_id = "3ddb2a95-937c-4ed0-862e-7b59a4e78152"
  name          = "Ira Strosin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6e4c12d0-5e7f-458d-8a06-25cbff5b31f2"
}