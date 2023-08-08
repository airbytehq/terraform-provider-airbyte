resource "airbyte_source_posthog" "my_source_posthog" {
  configuration = {
    api_key     = "...my_api_key..."
    base_url    = "https://posthog.example.com"
    source_type = "posthog"
    start_date  = "2021-01-01T00:00:00Z"
  }
  name         = "Ada Tromp"
  secret_id    = "...my_secret_id..."
  workspace_id = "266cbd95-f7aa-42b2-8113-695d1e6698fc"
}