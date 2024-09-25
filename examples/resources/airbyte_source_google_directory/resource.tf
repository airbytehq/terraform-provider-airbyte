resource "airbyte_source_google_directory" "my_source_googledirectory" {
  configuration = {
    credentials = {
      service_account_key = {
        credentials_json = "...my_credentials_json..."
        email            = "Rey57@yahoo.com"
      }
    }
  }
  definition_id = "f3b04e32-dc64-49b6-bc8e-2c7d0de0f8a2"
  name          = "Dustin Kozey"
  secret_id     = "...my_secret_id..."
  workspace_id  = "de20e751-11fd-4061-affd-3df11978b385"
}