resource "airbyte_source_linkedin_ads" "my_source_linkedinads" {
  configuration = {
    account_ids = [
      2,
    ]
    ad_analytics_reports = [
      {
        name             = "Kathy Muller"
        pivot_by         = "CONVERSATION_NODE_OPTION_INDEX"
        time_granularity = "MONTHLY"
      },
    ]
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    lookback_window = 5
    start_date      = "2021-05-17"
  }
  definition_id = "dbfafbdd-349a-4fd0-8d95-bcfe3342dc40"
  name          = "Kristi Tromp"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1635af9f-94f9-485a-a22e-677c77be4e42"
}