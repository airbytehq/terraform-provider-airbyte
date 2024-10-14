resource "airbyte_source_linkedin_pages" "my_source_linkedinpages" {
  configuration = {
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
      o_auth20 = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    org_id                = "123456789"
    start_date            = "2021-01-19T08:22:37.981Z"
    time_granularity_type = "MONTH"
  }
  definition_id = "b7320995-89cb-4a35-929d-c298cd64bbd8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "25451ff1-20df-4bf1-bbc0-fffa15035a0e"
}