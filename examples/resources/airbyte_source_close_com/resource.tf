resource "airbyte_source_close_com" "my_source_closecom" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "close-com"
    start_date  = "2021-01-01"
  }
  name         = "Kim Crist"
  secret_id    = "...my_secret_id..."
  workspace_id = "c88373a4-0e19-442f-b2e5-5055756f5d56"
}