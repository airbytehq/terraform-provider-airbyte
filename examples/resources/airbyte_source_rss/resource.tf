resource "airbyte_source_rss" "my_source_rss" {
  configuration = {
    source_type = "rss"
    url         = "...my_url..."
  }
  name         = "Cindy Walter"
  workspace_id = "02d82f0d-45eb-44a8-b674-ee5cfc18edc7"
}