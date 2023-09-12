resource "airbyte_source_tempo" "my_source_tempo" {
  configuration = {
    api_token   = "...my_api_token..."
    source_type = "tempo"
  }
  name         = "Edwin Haley"
  secret_id    = "...my_secret_id..."
  workspace_id = "7f69e2c9-e6d1-40e9-9b3a-d4c6b03108d9"
}