resource "airbyte_source_linkedin_pages" "my_source_linkedinpages" {
  configuration = {
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    org_id                = "123456789"
    start_date            = "2022-11-26T15:57:22.522Z"
    time_granularity_type = "DAY"
  }
  definition_id = "c70bfb32-667c-447d-9036-16107c03f839"
  name          = "Donna Jerde"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c9db1c42-6709-4282-b0b3-08e78729ff50"
}