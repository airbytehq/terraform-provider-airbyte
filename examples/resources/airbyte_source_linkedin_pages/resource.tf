resource "airbyte_source_linkedin_pages" "my_source_linkedinpages" {
  configuration = {
    credentials = {
      source_linkedin_pages_authentication_access_token = {
        access_token = "...my_access_token..."
        auth_method  = "access_token"
      }
    }
    org_id      = "123456789"
    source_type = "linkedin-pages"
  }
  name         = "Tracey Kutch"
  secret_id    = "...my_secret_id..."
  workspace_id = "c66183bf-e965-49eb-80ec-16faf75b0b53"
}