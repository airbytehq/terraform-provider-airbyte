resource "airbyte_source_google_directory" "my_source_googledirectory" {
  configuration = {
    credentials = {
      service_account_key = {
        credentials_json = "...my_credentials_json..."
        email            = "Brittany_Steuber89@hotmail.com"
      }
    }
  }
  definition_id = "a2fd145f-48d3-4631-b985-539f352d3206"
  name          = "Amos Rath"
  secret_id     = "...my_secret_id..."
  workspace_id  = "724a60d4-0134-4e58-876c-b030a128ae06"
}