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
  name         = "Karen Barrows I"
  secret_id    = "...my_secret_id..."
  workspace_id = "91160820-7888-4ec6-a183-bfe9659eb40e"
}