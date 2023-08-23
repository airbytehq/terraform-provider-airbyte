resource "airbyte_source_aircall" "my_source_aircall" {
  configuration = {
    api_id      = "...my_api_id..."
    api_token   = "...my_api_token..."
    source_type = "aircall"
    start_date  = "2022-03-01T00:00:00.000Z"
  }
  name         = "Leslie Waters"
  secret_id    = "...my_secret_id..."
  workspace_id = "e4be0560-13f5-49da-b57a-59ecfef66ef1"
}