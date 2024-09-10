resource "airbyte_source_smaily" "my_source_smaily" {
  configuration = {
    api_password  = "...my_api_password..."
    api_subdomain = "...my_api_subdomain..."
    api_username  = "...my_api_username..."
  }
  definition_id = "63d3381e-fe3f-47d5-a433-d30ca4aa9f68"
  name          = "Elena Miller"
  secret_id     = "...my_secret_id..."
  workspace_id  = "345ef318-3cb2-4e52-a86a-dbb57c5cbe7c"
}