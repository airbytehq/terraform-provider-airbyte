resource "airbyte_source_harness" "my_source_harness" {
  configuration = {
    account_id = "...my_account_id..."
    api_key    = "...my_api_key..."
    api_url    = "https://my-harness-server.example.com"
  }
  definition_id = "986e53e5-16b5-476e-be01-4ac2c669803f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4283a0f1-6d05-446a-9e8d-b8612e1c5647"
}