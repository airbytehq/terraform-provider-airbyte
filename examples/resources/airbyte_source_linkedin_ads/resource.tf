resource "airbyte_source_linkedin_ads" "my_source_linkedinads" {
  configuration = {
    account_ids = [
      4,
    ]
    ad_analytics_reports = [
      {
        name             = "Carolyn Bednar"
        pivot_by         = "MEMBER_COUNTRY_V2"
        time_granularity = "ALL"
      },
    ]
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    start_date = "2021-05-17"
  }
  definition_id = "1ce49a8f-c7f8-4e24-a726-45cfb2449eef"
  name          = "Cory Johnson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b4b875ea-1fa6-43f6-80fa-c1403cfd915c"
}