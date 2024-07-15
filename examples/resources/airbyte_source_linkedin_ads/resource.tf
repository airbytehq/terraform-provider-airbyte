resource "airbyte_source_linkedin_ads" "my_source_linkedinads" {
  configuration = {
    account_ids = [
      10,
    ]
    ad_analytics_reports = [
      {
        name             = "Lynne Baumbach"
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
  definition_id = "3cfd915c-c53a-4e1f-9c37-b350ebb3981c"
  name          = "Marshall Yundt"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3f1e6164-cc87-488f-b77a-58933f7738d6"
}