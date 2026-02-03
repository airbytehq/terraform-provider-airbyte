resource "airbyte_source_height" "my_source_height" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    search_query          = "...my_search_query..."
    start_date            = "2022-11-15T07:21:49.481Z"
  }
  definition_id = "9ed7e5b0-1d2c-44b8-9c0f-5eccba0fe53e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "db192958-f04d-4508-a4b5-2a2adcca1b8b"
}