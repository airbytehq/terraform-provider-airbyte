resource "airbyte_source_pendo" "my_source_pendo" {
  configuration = {
    api_key = "...my_api_key..."
  }
  name         = "Leigh Bruen"
  secret_id    = "...my_secret_id..."
  workspace_id = "b428b10c-62ae-4eab-aa16-bc0f1be55677"
}