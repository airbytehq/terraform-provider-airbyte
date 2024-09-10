resource "airbyte_source_close_com" "my_source_closecom" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-01-01"
  }
  definition_id = "9ddb3b3d-7401-439d-82cf-2cb416442d85"
  name          = "Vernon Ratke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "82e70e18-a817-42f9-b227-1c9f9cbaa542"
}