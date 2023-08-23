resource "airbyte_source_pendo" "my_source_pendo" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "pendo"
  }
  name         = "Bridget Medhurst"
  secret_id    = "...my_secret_id..."
  workspace_id = "c63562eb-fdf5-45c2-94c0-60b06a128776"
}