resource "airbyte_source_trello" "my_source_trello" {
  configuration = {
    board_ids = [
      "...",
    ]
    key        = "...my_key..."
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  definition_id = "418c27e2-e49f-4be8-8753-d48e30cccb1d"
  name          = "Sherri Stoltenberg"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c649b7a5-8a56-4364-9fd3-38f322856cd8"
}