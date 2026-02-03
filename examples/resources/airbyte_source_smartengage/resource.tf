resource "airbyte_source_smartengage" "my_source_smartengage" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "d3e2ce71-4d5a-432d-856f-2c21c4b5c771"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5c310aaf-bccb-4aee-98e1-e4a1a00d278e"
}