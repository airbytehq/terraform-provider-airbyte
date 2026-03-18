resource "airbyte_source_clockify" "my_source_clockify" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    api_url               = "https://api.clockify.me"
    workspace_id          = "...my_workspace_id..."
  }
  definition_id = "e71aae8a-5143-11ed-bdc3-0242ac120002"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8009b55e-5316-40ab-953e-a4f6f7d982bb"
}