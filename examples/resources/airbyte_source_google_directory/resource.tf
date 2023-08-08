resource "airbyte_source_google_directory" "my_source_googledirectory" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    email            = "Blaze0@yahoo.com"
    source_type      = "google-directory"
  }
  name         = "Elizabeth Stehr"
  secret_id    = "...my_secret_id..."
  workspace_id = "f5aeb779-9d22-4e8c-9f84-93825fdc42c8"
}