resource "airbyte_source_trustpilot" "my_source_trustpilot" {
  configuration = {
    business_units = [
      "...",
    ]
    credentials = {
      api_key = {
        client_id = "...my_client_id..."
      }
    }
    start_date = "%Y-%m-%dT%H:%M:%S"
  }
  definition_id = "30ca4aa9-f684-4d9a-b345-ef3183cb2e52"
  name          = "Byron Howell"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bb57c5cb-e7cc-4ff9-9072-4747a4b37eb2"
}