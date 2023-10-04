resource "airbyte_source_linkedin_ads" "my_source_linkedinads" {
  configuration = {
    account_ids = [
      6,
    ]
    ad_analytics_reports = [
      {
        name             = "Cary Bernier"
        pivot_by         = "CAMPAIGN"
        time_granularity = "YEARLY"
      },
    ]
    credentials = {
      source_linkedin_ads_authentication_access_token = {
        access_token = "...my_access_token..."
      }
    }
    start_date = "2021-05-17"
  }
  name         = "Jonathon Huels"
  secret_id    = "...my_secret_id..."
  workspace_id = "ff332bdf-1457-475f-8bb8-1a7466bf78b3"
}