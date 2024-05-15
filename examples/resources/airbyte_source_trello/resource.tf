resource "airbyte_source_trello" "my_source_trello" {
  configuration = {
    board_ids = [
      "...",
    ]
    key        = "...my_key..."
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  definition_id = "e494b9e5-830e-49ef-bf41-2cdcae9f85c7"
  name          = "Virginia Kuphal"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0526f885-6cdf-43fd-afbe-1999214f3ffa"
}