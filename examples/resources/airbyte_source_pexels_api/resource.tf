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
  definition_id = "e04d8ce1-5827-4406-85b5-3f0edc9bc353"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "72aedbff-463d-41bc-bf02-099fc30a9d8e"
}