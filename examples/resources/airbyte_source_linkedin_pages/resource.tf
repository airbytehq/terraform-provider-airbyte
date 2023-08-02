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
  name         = "Mitchell Davis"
  secret_id    = "...my_secretId..."
  workspace_id = "4077d0cc-3f40-48ef-815c-eb4d6e1eae0f"
}