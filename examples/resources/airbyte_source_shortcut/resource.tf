resource "airbyte_source_shortcut" "my_source_shortcut" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key_2             = "...my_api_key_2..."
    query                 = "...my_query..."
    start_date            = "2021-11-07T00:57:38.334Z"
  }
  definition_id = "06d61e51-b0d0-4e6f-9301-48b03b45bab1"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a257dfe4-366d-461b-b1e2-8bb8f32160e7"
}