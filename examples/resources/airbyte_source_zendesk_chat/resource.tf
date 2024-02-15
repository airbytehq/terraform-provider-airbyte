resource "airbyte_source_zendesk_chat" "my_source_zendeskchat" {
  configuration = {
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    start_date = "2021-02-01T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "4b784eda-af2f-4424-ad30-8606f0992622"
  name          = "Merle Kilback MD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "93e5915f-e584-44c8-97f9-e67badf74d23"
}