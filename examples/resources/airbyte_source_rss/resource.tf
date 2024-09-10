resource "airbyte_source_rss" "my_source_rss" {
  configuration = {
    url = "...my_url..."
  }
  definition_id = "8b7a8364-f95e-484e-bb6a-9353261882dc"
  name          = "Sophie O'Conner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7e2f3a67-4484-48ac-ab04-beae9e175304"
}