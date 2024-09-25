resource "airbyte_source_close_com" "my_source_closecom" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-01-01"
  }
  definition_id = "ea586a09-709e-4dce-b2c4-357e7eb149e6"
  name          = "Terence Miller"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6bd271d6-f7a7-47e5-9b04-b8d52e6bc1e2"
}