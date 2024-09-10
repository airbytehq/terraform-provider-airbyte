resource "airbyte_source_aircall" "my_source_aircall" {
  configuration = {
    api_id     = "...my_api_id..."
    api_token  = "...my_api_token..."
    start_date = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "45275644-5179-430e-98d4-3c0dabba6ef9"
  name          = "Myron Emard"
  secret_id     = "...my_secret_id..."
  workspace_id  = "744fd252-e57a-4a67-bd28-259f0c220e39"
}