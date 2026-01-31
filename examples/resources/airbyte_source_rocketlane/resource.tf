resource "airbyte_source_rocketlane" "my_source_rocketlane" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "b6e63e9c-a692-4a43-9d43-7907cec7ef9f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d10aa710-c784-4ca9-afd3-831b8da2908c"
}