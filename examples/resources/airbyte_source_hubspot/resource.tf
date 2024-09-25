resource "airbyte_source_hubspot" "my_source_hubspot" {
  configuration = {
    credentials = {
      o_auth = {
        client_id     = "123456789000"
        client_secret = "secret"
        refresh_token = "refresh_token"
      }
    }
    enable_experimental_streams = true
    start_date                  = "2017-01-25T00:00:00Z"
  }
  definition_id = "188dc05c-92c2-4050-bdf2-ba7d43d20d33"
  name          = "Mrs. Don Walsh"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d5352278-8fae-4aba-9eb9-3c772879b606"
}