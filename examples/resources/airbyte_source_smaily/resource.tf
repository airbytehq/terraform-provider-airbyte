resource "airbyte_source_smaily" "my_source_smaily" {
  configuration = {
    api_password  = "...my_api_password..."
    api_subdomain = "...my_api_subdomain..."
    api_username  = "...my_api_username..."
  }
  definition_id = "d8a9d001-0028-4d11-8128-0d807cdd8eb8"
  name          = "Ron Hermiston"
  secret_id     = "...my_secret_id..."
  workspace_id  = "610938eb-2433-4624-98c5-c5aa0b5368b2"
}