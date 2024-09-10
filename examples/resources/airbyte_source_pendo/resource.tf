resource "airbyte_source_pendo" "my_source_pendo" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "fe630392-88c9-4500-9e51-5b2e740522a6"
  name          = "Angel Oberbrunner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5e8ae1d2-17c0-4fcb-a7d2-d3433ea86279"
}