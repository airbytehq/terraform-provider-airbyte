resource "airbyte_source_close_com" "my_source_closecom" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2021-01-01"
  }
  definition_id = "dfffecb7-9a13-43e9-acdc-b92af7997ca9"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "65416224-7de7-412c-a755-9d5c38065592"
}