resource "airbyte_source_thinkific_courses" "my_source_thinkificcourses" {
  configuration = {
    api_key          = "...my_api_key..."
    x_auth_subdomain = "...my_x_auth_subdomain..."
  }
  definition_id = "02448c41-2d45-4aad-8227-e9e639287be4"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "9df8d5df-420f-4ecc-8af2-db64e9e69724"
}