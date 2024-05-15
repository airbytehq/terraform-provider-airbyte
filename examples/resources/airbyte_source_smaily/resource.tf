resource "airbyte_source_smaily" "my_source_smaily" {
  configuration = {
    api_password  = "...my_api_password..."
    api_subdomain = "...my_api_subdomain..."
    api_username  = "...my_api_username..."
  }
  definition_id = "19db3e1c-883c-455a-8ce5-c37529a15c36"
  name          = "Lucy Cassin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3f5716d2-b265-4f2a-b56f-ce7bdd581ac6"
}