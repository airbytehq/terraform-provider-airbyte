resource "airbyte_source_linkedin_ads" "my_source_linkedinads" {
  configuration = {
    account_ids = [
      1,
    ]
    ad_analytics_reports = [
      {
        name             = "Kara Rohan"
        pivot_by         = "MEMBER_REGION_V2"
        time_granularity = "MONTHLY"
      },
    ]
    credentials = {
      source_linkedin_ads_authentication_access_token = {
        access_token = "...my_access_token..."
        auth_method  = "access_token"
      }
    }
    source_type = "linkedin-ads"
    start_date  = "2021-05-17"
  }
  name         = "Elsa Adams"
  secret_id    = "...my_secret_id..."
  workspace_id = "930b69f7-ac2f-472f-8850-090491160820"
}