resource "airbyte_source_google_directory" "my_source_googledirectory" {
  configuration = {
    credentials = {
      source_google_directory_google_credentials_service_account_key = {
        credentials_json  = "...my_credentials_json..."
        credentials_title = "Service accounts"
        email             = "Juvenal.Frami64@hotmail.com"
      }
    }
    source_type = "google-directory"
  }
  name         = "Kelvin Kshlerin"
  secret_id    = "...my_secret_id..."
  workspace_id = "9d22e8c1-f849-4382-9fdc-42c876c2c2df"
}