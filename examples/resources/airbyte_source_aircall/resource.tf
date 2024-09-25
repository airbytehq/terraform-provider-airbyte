resource "airbyte_source_aircall" "my_source_aircall" {
  configuration = {
    api_id     = "...my_api_id..."
    api_token  = "...my_api_token..."
    start_date = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "a96c6335-4ae1-4d23-83d1-1ff934df0d75"
  name          = "Chelsea Lubowitz PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "90daf918-6ab6-43a7-b2e3-879ec566b1d1"
}