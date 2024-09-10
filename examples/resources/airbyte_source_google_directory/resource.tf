resource "airbyte_source_google_directory" "my_source_googledirectory" {
  configuration = {
    credentials = {
      service_account_key = {
        credentials_json = "...my_credentials_json..."
        email            = "Aniya.Prohaska79@hotmail.com"
      }
    }
  }
  definition_id = "adaa0e32-8a3b-4d55-a3e0-4de287b75265"
  name          = "Mack Wisozk"
  secret_id     = "...my_secret_id..."
  workspace_id  = "deb8cbf2-674a-4920-b3b1-7bfcc526af10"
}