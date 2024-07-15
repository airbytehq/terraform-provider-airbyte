resource "airbyte_source_google_directory" "my_source_googledirectory" {
  configuration = {
    credentials = {
      service_account_key = {
        credentials_json = "...my_credentials_json..."
        email            = "Allan67@hotmail.com"
      }
    }
  }
  definition_id = "128ae06a-57c7-4c57-baf1-e5baddd2747b"
  name          = "Sylvester Konopelski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "41709ce4-fe16-45bc-8840-e7fb5df25477"
}