resource "airbyte_source_linkedin_pages" "my_source_linkedinpages" {
  configuration = {
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    org_id                = "123456789"
    start_date            = "2022-01-06T04:41:29.233Z"
    time_granularity_type = "DAY"
  }
  definition_id = "ae1f1c37-b350-4ebb-b981-c89f963f1e61"
  name          = "Anita Ryan"
  secret_id     = "...my_secret_id..."
  workspace_id  = "788ff77a-5893-43f7-b38d-63dc7b7f8b16"
}