resource "airbyte_source_teamtailor" "my_source_teamtailor" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api                   = "...my_api..."
    x_api_version         = "...my_x_api_version..."
  }
  definition_id = "2aff6471-df21-4ec1-816f-e92976906647"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7b7a97bf-3221-4a52-9460-59cf42b967c0"
}