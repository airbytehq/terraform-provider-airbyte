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
  name         = "Dr. Devin Waters"
  secret_id    = "...my_secret_id..."
  workspace_id = "91594d93-a74c-4025-afe3-b4b4db8b778e"
}