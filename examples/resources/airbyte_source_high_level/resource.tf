resource "airbyte_source_high_level" "my_source_highlevel" {
  configuration = {
    api_key     = "...my_api_key..."
    location_id = "...my_location_id..."
    start_date  = "2022-08-22T12:23:24.572Z"
  }
  definition_id = "77fdd02e-1601-4834-b32e-2373cf67f651"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ac802724-3ae6-45c1-8e74-b4776986d5d0"
}