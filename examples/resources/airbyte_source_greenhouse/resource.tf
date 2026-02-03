resource "airbyte_source_greenhouse" "my_source_greenhouse" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "ee4f5101-585f-409a-b84b-23d08728538c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "de002c3a-71ed-41e6-84a0-69f88d5d5733"
}