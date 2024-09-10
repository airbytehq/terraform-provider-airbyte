resource "airbyte_source_trello" "my_source_trello" {
  configuration = {
    board_ids = [
      "...",
    ]
    key        = "...my_key..."
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  definition_id = "0f99e008-79e4-4948-8a74-85520644aee4"
  name          = "Melinda Zboncak"
  secret_id     = "...my_secret_id..."
  workspace_id  = "df9bf84b-784e-4daa-b2f4-24ed308606f0"
}