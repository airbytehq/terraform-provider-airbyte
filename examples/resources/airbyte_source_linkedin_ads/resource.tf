resource "airbyte_source_linkedin_ads" "my_source_linkedinads" {
  configuration = {
    account_ids = [
      6,
    ]
    ad_analytics_reports = [
      {
        name             = "Orlando Schuppe"
        pivot_by         = "MEMBER_INDUSTRY"
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
  definition_id = "72879b60-69b6-4a28-9f31-96ea9203cb78"
  name          = "Kristen Toy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a531f3b4-802a-43b9-9674-976dbe116c78"
}