resource "airbyte_source_rss" "my_source_rss" {
  configuration = {
    url = "...my_url..."
  }
  definition_id = "d2c04124-4365-469f-964c-d2bcf08a635d"
  name          = "Molly Lindgren"
  secret_id     = "...my_secret_id..."
  workspace_id  = "86ceccfa-e93f-47f0-b8c4-b4f8d4f6833e"
}