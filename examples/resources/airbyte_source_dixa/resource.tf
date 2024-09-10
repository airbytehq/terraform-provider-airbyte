resource "airbyte_source_dixa" "my_source_dixa" {
  configuration = {
    api_token  = "...my_api_token..."
    batch_size = 1
    start_date = "YYYY-MM-DD"
  }
  definition_id = "0498ec40-fd8a-4d91-a1a0-5c5e889977ea"
  name          = "Gary Little"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3c2d3308-2ab8-440e-9611-2c1fda0210a5"
}