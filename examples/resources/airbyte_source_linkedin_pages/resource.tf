resource "airbyte_source_linkedin_pages" "my_source_linkedinpages" {
  configuration = {
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    org_id = "123456789"
  }
  definition_id = "95b197bb-b022-47d6-a5c3-155f731c6e6b"
  name          = "Joshua Rowe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "166aee78-9254-477f-b87c-53022ba4aed2"
}