resource "airbyte_source_trello" "my_source_trello" {
  configuration = {
    board_ids = [
      "...",
    ]
    key        = "...my_key..."
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  definition_id = "26a8838c-f8d2-427f-b18d-4240654f4782"
  name          = "Esther Abshire"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b5a46242-8ebc-45c7-bead-f0c9ce16ebe8"
}