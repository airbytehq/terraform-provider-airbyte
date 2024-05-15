resource "airbyte_source_google_directory" "my_source_googledirectory" {
  configuration = {
    credentials = {
      service_account_key = {
        credentials_json = "...my_credentials_json..."
        email            = "Makenzie.Cassin@gmail.com"
      }
    }
  }
  definition_id = "83b00ec7-0459-456c-83ec-7b8b68fdfc06"
  name          = "Shawn Quigley"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d673f59a-8d0a-4cc9-948b-0061059fac1d"
}