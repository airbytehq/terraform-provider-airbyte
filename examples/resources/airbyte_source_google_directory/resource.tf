resource "airbyte_source_google_directory" "my_source_googledirectory" {
  configuration = {
    credentials = {
      service_account_key = {
        credentials_json = "...my_credentials_json..."
        email            = "Sharon_Schmidt@gmail.com"
      }
    }
  }
  definition_id = "8b68fdfc-0692-4b4f-9673-f59a8d0acc99"
  name          = "Mr. Mattie Rau"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1059fac1-d6c9-4b0f-8f35-d942704e93eb"
}