resource "airbyte_source_smaily" "my_source_smaily" {
  configuration = {
    api_password  = "...my_api_password..."
    api_subdomain = "...my_api_subdomain..."
    api_username  = "...my_api_username..."
    source_type   = "smaily"
  }
  name         = "Donnie Hauck"
  secret_id    = "...my_secret_id..."
  workspace_id = "b6902b88-1a94-4f64-b664-a8f0af8c691d"
}