resource "airbyte_source_rss" "my_source_rss" {
  configuration = {
    source_type = "rss"
    url         = "...my_url..."
  }
  name         = "Donna Gottlieb"
  secret_id    = "...my_secret_id..."
  workspace_id = "c5dbb3c5-7c1e-4498-9e8a-a257ddc1912e"
}