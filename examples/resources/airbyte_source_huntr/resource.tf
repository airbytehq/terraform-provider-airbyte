resource "airbyte_source_huntr" "my_source_huntr" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "97d78c13-ae87-410f-b559-356fb3e9f82d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "73573482-fca8-4090-8da0-b1315d5212d3"
}