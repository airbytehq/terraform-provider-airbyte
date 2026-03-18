resource "airbyte_source_linkedin_pages" "my_source_linkedinpages" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    org_id                = "123456789"
    start_date            = "2023-01-01T00:00:00Z"
    time_granularity_type = "DAY"
  }
  definition_id = "af54297c-e8f8-4d63-a00d-a94695acc9d3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "25451ff1-20df-4bf1-bbc0-fffa15035a0e"
}