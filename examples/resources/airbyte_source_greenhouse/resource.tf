resource "airbyte_source_greenhouse" "my_source_greenhouse" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "59f1e50a-331f-4f09-b3e8-2e8d4d355f44"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "de002c3a-71ed-41e6-84a0-69f88d5d5733"
}