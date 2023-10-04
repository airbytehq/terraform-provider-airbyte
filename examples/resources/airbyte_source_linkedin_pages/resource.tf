resource "airbyte_source_linkedin_pages" "my_source_linkedinpages" {
  configuration = {
    credentials = {
      source_linkedin_pages_authentication_access_token = {
        access_token = "...my_access_token..."
      }
    }
    org_id = "123456789"
  }
  name         = "Allan Stamm"
  secret_id    = "...my_secret_id..."
  workspace_id = "e547fc7c-1cb5-43c3-9168-9ddb3b3d7401"
}