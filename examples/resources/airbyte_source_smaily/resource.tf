resource "airbyte_source_smaily" "my_source_smaily" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_password          = "...my_api_password..."
    api_subdomain         = "...my_api_subdomain..."
    api_username          = "...my_api_username..."
  }
  definition_id = "781f8b1d-4e20-4842-a2c3-cd9b119d65fa"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "9910a2cc-8a4e-4833-9f0d-e4ee3e07cabf"
}