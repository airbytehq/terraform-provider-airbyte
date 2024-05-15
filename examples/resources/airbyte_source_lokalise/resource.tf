resource "airbyte_source_lokalise" "my_source_lokalise" {
  configuration = {
    api_key    = "...my_api_key..."
    project_id = "...my_project_id..."
  }
  definition_id = "1f48b8f8-6701-4054-81db-1ce49a8fc7f8"
  name          = "Clarence Goldner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2645cfb2-449e-4ef8-b64e-b4b875ea1fa6"
}