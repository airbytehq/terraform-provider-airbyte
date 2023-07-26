resource "airbyte_source_linkedin_pages" "my_source_linkedinpages" {
  configuration = {
    credentials = {
      access_token = "...my_access_token..."
      auth_method  = "access_token"
    }
    org_id      = "123456789"
    source_type = "linkedin-pages"
  }
  name         = "Ms. Garrett Bradtke"
  workspace_id = "400313b3-e504-44f6-9fe7-2dc4077d0cc3"
}