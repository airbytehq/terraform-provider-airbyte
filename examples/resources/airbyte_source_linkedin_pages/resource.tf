resource "airbyte_source_linkedin_pages" "my_source_linkedinpages" {
  configuration = {
    credentials = {
      source_linkedin_pages_access_token = {
        access_token = "...my_access_token..."
      }
    }
    org_id = "123456789"
  }
  definition_id = "0ebb3981-c89f-4963-b1e6-164cc8788ff7"
  name          = "Kayla Haley"
  secret_id     = "...my_secret_id..."
  workspace_id  = "33f7738d-63dc-47b7-b8b1-6c6167f1e8f0"
}