resource "airbyte_source_linkedin_pages" "my_source_linkedinpages" {
  configuration = {
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    org_id                = "123456789"
    start_date            = "2022-02-20T02:33:55.102Z"
    time_granularity_type = "MONTH"
  }
  definition_id = "7b7f8b16-c616-47f1-a8f0-042f92210b5c"
  name          = "Mrs. Edmond Cronin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6a775647-eb6b-4abc-8f9b-18b2eafdc453"
}