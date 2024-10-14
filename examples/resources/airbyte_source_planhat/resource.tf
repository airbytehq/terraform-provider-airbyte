resource "airbyte_source_planhat" "my_source_planhat" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "1bc1fb31-9f57-4b2d-8bd9-afdb76d79e73"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d46ff259-de23-4993-8c72-82757a04e149"
}