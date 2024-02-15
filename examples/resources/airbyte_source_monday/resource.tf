resource "airbyte_source_monday" "my_source_monday" {
  configuration = {
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
      }
    }
  }
  definition_id = "c990f9b2-ce7a-467a-8515-0ea86120cd61"
  name          = "Woodrow Kuphal"
  secret_id     = "...my_secret_id..."
  workspace_id  = "806812ca-7b26-4952-a155-53a713498a3f"
}