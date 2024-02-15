resource "airbyte_source_trello" "my_source_trello" {
  configuration = {
    board_ids = [
      "...",
    ]
    key        = "...my_key..."
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  definition_id = "a7270287-5abb-488c-b98d-79666080f3ec"
  name          = "Lamar Douglas"
  secret_id     = "...my_secret_id..."
  workspace_id  = "491ea799-2cd6-43d3-b81e-fe3f7d5a433d"
}