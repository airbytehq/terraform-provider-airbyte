resource "airbyte_source_rss" "my_source_rss" {
  configuration = {
    url = "...my_url..."
  }
  definition_id = "8c723c8e-5e25-49fe-8ef6-493875b5a324"
  name          = "Raul Blick"
  secret_id     = "...my_secret_id..."
  workspace_id  = "aabbad07-3078-42c3-a822-825101e3e25c"
}