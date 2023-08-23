resource "airbyte_source_posthog" "my_source_posthog" {
  configuration = {
    api_key     = "...my_api_key..."
    base_url    = "https://posthog.example.com"
    source_type = "posthog"
    start_date  = "2021-01-01T00:00:00Z"
  }
  name         = "Darrin Bogisich"
  secret_id    = "...my_secret_id..."
  workspace_id = "88d40d03-f3de-4ba2-97be-3e90bc40df86"
}