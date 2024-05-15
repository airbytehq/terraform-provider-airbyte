resource "airbyte_source_google_directory" "my_source_googledirectory" {
  configuration = {
    credentials = {
      service_account_key = {
        credentials_json = "...my_credentials_json..."
        email            = "Wayne9@yahoo.com"
      }
    }
  }
  definition_id = "d722b310-b676-4fb7-b1c6-d5241e9821d4"
  name          = "Lucas Altenwerth"
  secret_id     = "...my_secret_id..."
  workspace_id  = "42ccd276-3a0d-430e-b91c-3df259349552"
}