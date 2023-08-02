resource "airbyte_source_dixa" "my_source_dixa" {
  configuration = {
    api_token   = "...my_api_token..."
    batch_size  = 31
    source_type = "dixa"
    start_date  = "YYYY-MM-DD"
  }
  name         = "Marshall Hyatt V"
  secret_id    = "...my_secretId..."
  workspace_id = "6a4f77a8-7ee3-4e4b-a752-c65b34418e3b"
}