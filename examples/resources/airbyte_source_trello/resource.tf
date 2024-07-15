resource "airbyte_source_trello" "my_source_trello" {
  configuration = {
    board_ids = [
      "...",
    ]
    key        = "...my_key..."
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  definition_id = "8d227f31-8d42-4406-94f4-782740a2b5a4"
  name          = "Beverly Grimes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ebc5c77e-adf0-4c9c-a16e-be85fa64aee8"
}