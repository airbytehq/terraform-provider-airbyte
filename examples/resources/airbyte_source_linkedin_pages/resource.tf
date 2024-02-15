resource "airbyte_source_linkedin_pages" "my_source_linkedinpages" {
  configuration = {
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    org_id = "123456789"
  }
  definition_id = "5fa52e0c-6c0c-4c93-a76e-9fdef541f06c"
  name          = "Patrick Fadel PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "89c1488f-aa41-41d9-9922-269c9d648f0b"
}