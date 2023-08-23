resource "airbyte_source_dixa" "my_source_dixa" {
  configuration = {
    api_token   = "...my_api_token..."
    batch_size  = 1
    source_type = "dixa"
    start_date  = "YYYY-MM-DD"
  }
  name         = "Irvin Marks"
  secret_id    = "...my_secret_id..."
  workspace_id = "1a6a4f77-a87e-4e3e-8be7-52c65b34418e"
}