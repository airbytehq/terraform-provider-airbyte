resource "airbyte_source_rss" "my_source_rss" {
  configuration = {
    source_type = "rss"
    url         = "...my_url..."
  }
  name         = "Gustavo Donnelly"
  secret_id    = "...my_secret_id..."
  workspace_id = "ba9216bc-b415-4835-8736-41723133edc0"
}