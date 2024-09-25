resource "airbyte_source_posthog" "my_source_posthog" {
  configuration = {
    api_key          = "...my_api_key..."
    base_url         = "https://posthog.example.com"
    events_time_step = 10
    start_date       = "2021-01-01T00:00:00Z"
  }
  definition_id = "9dfc7f45-8565-4e71-95c9-f06b5482c9eb"
  name          = "Mr. Tamara Ankunding"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0337f10a-6436-49e4-ae32-ccb4d52da612"
}