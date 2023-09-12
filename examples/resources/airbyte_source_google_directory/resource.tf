resource "airbyte_source_google_directory" "my_source_googledirectory" {
  configuration = {
    credentials = {
      source_google_directory_google_credentials_service_account_key = {
        credentials_json  = "...my_credentials_json..."
        credentials_title = "Service accounts"
        email             = "Ayla.Zulauf@hotmail.com"
      }
    }
    source_type = "google-directory"
  }
  name         = "Mrs. Allen Lockman"
  secret_id    = "...my_secret_id..."
  workspace_id = "dc42c876-c2c2-4dfb-8cfc-1c76230f841f"
}