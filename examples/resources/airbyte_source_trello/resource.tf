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
  name         = "Philip Armstrong"
  secret_id    = "...my_secret_id..."
  workspace_id = "a966489d-7b78-4673-a13a-12a6b9924945"
}