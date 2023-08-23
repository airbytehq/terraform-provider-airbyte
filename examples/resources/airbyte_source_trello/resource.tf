resource "airbyte_source_trello" "my_source_trello" {
  configuration = {
    board_ids = [
      "...",
    ]
    key         = "...my_key..."
    source_type = "trello"
    start_date  = "2021-03-01T00:00:00Z"
    token       = "...my_token..."
  }
  name         = "Rosemary Rice"
  secret_id    = "...my_secret_id..."
  workspace_id = "b3cdf641-5b04-449f-9df1-3f4eedbe78bf"
}