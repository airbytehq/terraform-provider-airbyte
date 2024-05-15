resource "airbyte_source_linkedin_ads" "my_source_linkedinads" {
  configuration = {
    account_ids = [
      7,
    ]
    ad_analytics_reports = [
      {
        name             = "Lori McClure"
        pivot_by         = "SHARE"
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
  definition_id = "bb0227d6-25c3-4155-b731-c6e6bc1caf16"
  name          = "Joanna Waelchi"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8925477f-387c-4530-a2ba-4aed2995c663"
}