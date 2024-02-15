resource "airbyte_source_linkedin_ads" "my_source_linkedinads" {
  configuration = {
    account_ids = [
      4,
    ]
    ad_analytics_reports = [
      {
        name             = "Abraham Greenholt MD"
        pivot_by         = "CONVERSATION_NODE"
        time_granularity = "YEARLY"
      },
    ]
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    start_date = "2021-05-17"
  }
  definition_id = "61a4e466-849f-47bb-aaae-f524043cb4c4"
  name          = "Tracy Watsica"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7bd59151-74a5-453f-9a41-daf7626ef51c"
}