resource "airbyte_source_trello" "my_source_trello" {
  configuration = {
    board_ids = [
      "...",
    ]
    key        = "...my_key..."
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  name         = "Mercedes Turcotte"
  secret_id    = "...my_secret_id..."
  workspace_id = "327e7787-5126-4eb5-a944-312d5d5e6a2d"
}