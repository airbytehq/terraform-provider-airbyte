resource "airbyte_source_dixa" "my_source_dixa" {
  configuration = {
    api_token   = "...my_api_token..."
    batch_size  = 31
    source_type = "dixa"
    start_date  = "YYYY-MM-DD"
  }
  name         = "Brittany Cole"
  secret_id    = "...my_secret_id..."
  workspace_id = "5b34418e-3bb9-41c8-9975-e0e8419d8f84"
}