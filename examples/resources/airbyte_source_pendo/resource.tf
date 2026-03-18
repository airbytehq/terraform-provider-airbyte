resource "airbyte_source_pendo" "my_source_pendo" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "b1ccb590-e84f-46c0-83a0-2048ccfffdae"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7c389f35-1a33-4f9f-9deb-a47c0e8cb860"
}