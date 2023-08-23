resource "airbyte_source_linkedin_ads" "my_source_linkedinads" {
  configuration = {
    account_ids = [
      1,
    ]
    ad_analytics_reports = [
      {
        name             = "Mable Stroman"
        pivot_by         = "MEMBER_COMPANY_SIZE"
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
  name         = "Leigh Kuhic"
  secret_id    = "...my_secret_id..."
  workspace_id = "1cbe6d95-02f0-4ea9-b0b6-9f7ac2f72f88"
}