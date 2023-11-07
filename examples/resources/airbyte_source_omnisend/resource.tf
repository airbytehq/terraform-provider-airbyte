resource "airbyte_source_omnisend" "my_source_omnisend" {
  configuration = {
    api_key = "...my_api_key..."
  }
  name         = "Shawna Treutel"
  secret_id    = "...my_secret_id..."
  workspace_id = "76bd271d-6f7a-477e-91b0-4b8d52e6bc1e"
}