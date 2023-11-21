resource "airbyte_source_rss" "my_source_rss" {
  configuration = {
    url = "...my_url..."
  }
  definition_id = "da21f739-86a7-41e9-92c2-b81056bc977a"
  name          = "Alison Wunsch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ff8dd835-d804-427d-a3a4-e1d8c723c8e5"
}