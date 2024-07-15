resource "airbyte_source_vantage" "my_source_vantage" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "20db5f4b-b11c-460c-ba7b-a336248be45d"
  name          = "Shaun Schultz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "24f6ab9f-8334-4526-aae7-1eb759d7dd0b"
}