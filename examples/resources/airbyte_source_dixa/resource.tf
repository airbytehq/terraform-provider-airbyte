resource "airbyte_source_dixa" "my_source_dixa" {
  configuration = {
    api_token  = "...my_api_token..."
    batch_size = 1
    start_date = "YYYY-MM-DD"
  }
  name         = "Edith Abshire"
  secret_id    = "...my_secret_id..."
  workspace_id = "bc2dbf18-8dfa-4bd5-b111-ac61dffa69fe"
}