resource "airbyte_source_trello" "my_source_trello" {
  configuration = {
    board_ids = [
      "...",
    ]
    key        = "...my_key..."
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  definition_id = "37527a54-8f48-410e-ab60-f065130056f9"
  name          = "Sonya Schulist"
  secret_id     = "...my_secret_id..."
  workspace_id  = "123a35af-023c-42b5-a9d8-41a38ae3ec6a"
}