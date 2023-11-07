resource "airbyte_source_delighted" "my_source_delighted" {
  configuration = {
    api_key = "...my_api_key..."
    since   = "2022-05-30 04:50:23"
  }
  name         = "Katherine Cronin"
  secret_id    = "...my_secret_id..."
  workspace_id = "7f29336e-2378-418d-9537-3da8d6eef047"
}