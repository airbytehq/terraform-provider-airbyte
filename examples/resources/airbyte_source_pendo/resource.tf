resource "airbyte_source_pendo" "my_source_pendo" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "93048e9c-1af9-4961-b1c8-83a572712d8f"
  name          = "Olivia Jaskolski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3cb82b32-ad03-4fd9-a9d8-ba9b0df86503"
}