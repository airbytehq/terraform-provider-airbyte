resource "airbyte_source_dixa" "my_source_dixa" {
  configuration = {
    api_token   = "...my_api_token..."
    batch_size  = 1
    source_type = "dixa"
    start_date  = "YYYY-MM-DD"
  }
  name         = "Moses Beatty Jr."
  workspace_id = "2d514f4c-c6f1-48bf-9621-a6a4f77a87ee"
}