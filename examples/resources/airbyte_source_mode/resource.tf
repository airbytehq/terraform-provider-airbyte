resource "airbyte_source_mode" "my_source_mode" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_secret            = "...my_api_secret..."
    api_token             = "...my_api_token..."
    workspace             = "...my_workspace..."
  }
  definition_id = "70ba78b8-dd9b-42e7-825d-4badf3a843d0"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "340a8940-479e-4e4b-b8f5-b45758827a0e"
}