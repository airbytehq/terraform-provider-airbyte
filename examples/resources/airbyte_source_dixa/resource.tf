resource "airbyte_source_dixa" "my_source_dixa" {
  configuration = {
    api_token  = "...my_api_token..."
    batch_size = 31
    start_date = "YYYY-MM-DD"
  }
  definition_id = "bd9faeed-a058-4285-a791-3edfcf9c9058"
  name          = "Ben Mills Jr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ee3e4cb5-5c69-45e2-b08e-b76e351cef20"
}