resource "airbyte_source_google_directory" "my_source_googledirectory" {
  configuration = {
    credentials = {
      service_account_key = {
        credentials_json = "...my_credentials_json..."
        email            = "Frida25@yahoo.com"
      }
    }
  }
  definition_id = "db07d769-8733-4386-b53a-479a0805ff17"
  name          = "Sean Predovic"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b799d631-99bd-46b4-a8c8-5ec21a9ab567"
}