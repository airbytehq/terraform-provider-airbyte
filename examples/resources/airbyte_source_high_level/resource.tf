resource "airbyte_source_high_level" "my_source_highlevel" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    location_id           = "...my_location_id..."
    start_date            = "2022-08-22T12:23:24.572Z"
  }
  definition_id = "2028e68a-8c97-45c4-b196-e61bad7b6f40"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ac802724-3ae6-45c1-8e74-b4776986d5d0"
}