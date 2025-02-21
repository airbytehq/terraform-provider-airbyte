resource "airbyte_source_simplecast" "my_source_simplecast" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "f542dcca-67ac-4f66-a5ba-837d0296f8f4"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c77a2ede-4811-4eca-9b09-54ee32b828da"
}