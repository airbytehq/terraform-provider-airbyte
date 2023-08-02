resource "airbyte_source_rss" "my_source_rss" {
  configuration = {
    source_type = "rss"
    url         = "...my_url..."
  }
  name         = "Sammy Ruecker"
  secret_id    = "...my_secretId..."
  workspace_id = "787e32e0-4b3d-43ed-8c56-70ef42bd3c9f"
}