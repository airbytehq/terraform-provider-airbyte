resource "airbyte_source_pexels_api" "my_source_pexelsapi" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    color                 = "red"
    locale                = "en-US"
    orientation           = "square"
    query                 = "people"
    size                  = "large"
  }
  definition_id = "69d9eb65-8026-47dc-baf1-e4bf67901fd6"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "72aedbff-463d-41bc-bf02-099fc30a9d8e"
}