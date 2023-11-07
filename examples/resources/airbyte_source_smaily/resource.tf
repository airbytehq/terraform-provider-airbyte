resource "airbyte_source_smaily" "my_source_smaily" {
  configuration = {
    api_password  = "...my_api_password..."
    api_subdomain = "...my_api_subdomain..."
    api_username  = "...my_api_username..."
  }
  name         = "Kristen Roberts"
  secret_id    = "...my_secret_id..."
  workspace_id = "9e4e758a-c092-4271-99b9-5b60c98bb703"
}