resource "airbyte_source_linkedin_pages" "my_source_linkedinpages" {
  configuration = {
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    org_id                = "123456789"
    start_date            = "2022-09-30T20:13:15.681Z"
    time_granularity_type = "MONTH"
  }
  definition_id = "41ce525b-4893-4048-a9c1-af9961b1c883"
  name          = "Clyde King"
  secret_id     = "...my_secret_id..."
  workspace_id  = "12d8f3b6-433c-4b82-b32a-d03fd9a9d8ba"
}