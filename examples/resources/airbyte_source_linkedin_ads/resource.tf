resource "airbyte_source_linkedin_ads" "my_source_linkedinads" {
  configuration = {
    account_ids = [
      6,
    ]
    ad_analytics_reports = [
      {
        name             = "Dwayne Zboncak"
        pivot_by         = "IMPRESSION_DEVICE_TYPE"
        time_granularity = "MONTHLY"
      },
    ]
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    start_date = "2021-05-17"
  }
  definition_id = "4672645c-fb24-449e-af87-64eb4b875ea1"
  name          = "Blake Howell"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6c0fac14-03cf-4d91-9cc5-3ae1f1c37b35"
}