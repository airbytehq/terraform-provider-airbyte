resource "airbyte_source_monday" "my_source_monday" {
  configuration = {
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
      }
    }
  }
  name         = "Traci Lynch"
  secret_id    = "...my_secret_id..."
  workspace_id = "8e9f7431-721e-4422-bfd5-1b66ec345b5c"
}