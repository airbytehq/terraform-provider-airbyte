resource "airbyte_source_height" "my_source_height" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    search_query          = "task"
    start_date            = "2022-11-15T07:21:49.481Z"
  }
  definition_id = "8f4b2d64-970a-4a6f-b316-3d1144c67be8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "db192958-f04d-4508-a4b5-2a2adcca1b8b"
}