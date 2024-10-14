resource "airbyte_source_smaily" "my_source_smaily" {
  configuration = {
    api_password  = "...my_api_password..."
    api_subdomain = "...my_api_subdomain..."
    api_username  = "...my_api_username..."
  }
  definition_id = "de7ce3b3-5961-453c-b801-171f643a6f4a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "9910a2cc-8a4e-4833-9f0d-e4ee3e07cabf"
}