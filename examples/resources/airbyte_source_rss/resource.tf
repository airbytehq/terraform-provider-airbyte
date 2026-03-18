resource "airbyte_source_rss" "my_source_rss" {
  configuration = {
    url = "...my_url..."
  }
  definition_id = "0efee448-6948-49e2-b786-17db50647908"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7991457f-abf1-481b-ae5a-f5dbbfea1c0b"
}