resource "airbyte_source_zoom" "my_source_zoom" {
  configuration = {
    jwt_token = "...my_jwt_token..."
  }
  definition_id = "a568aa6d-c340-4bb1-9469-57c123858702"
  name          = "Austin Lang"
  secret_id     = "...my_secret_id..."
  workspace_id  = "32c86dad-817e-4f75-b417-c7a0b7ebf790"
}