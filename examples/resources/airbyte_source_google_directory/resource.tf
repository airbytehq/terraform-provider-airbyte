resource "airbyte_source_google_directory" "my_source_googledirectory" {
  configuration = {
    credentials = {
      service_account_key = {
        credentials_json = "...my_credentials_json..."
        email            = "Lucio_Medhurst61@yahoo.com"
      }
    }
  }
  name         = "Patricia Feeney"
  secret_id    = "...my_secret_id..."
  workspace_id = "323c7d78-45b7-4f88-82a1-9738b218b704"
}