resource "airbyte_source_linkedin_pages" "my_source_linkedinpages" {
  configuration = {
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    org_id = "123456789"
  }
  definition_id = "b6d13c6e-3bbb-493b-9413-d75c6693a6b9"
  name          = "Ms. Elvira Ziemann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "50e4c312-0d77-4a56-aac7-96fdac1f48b8"
}