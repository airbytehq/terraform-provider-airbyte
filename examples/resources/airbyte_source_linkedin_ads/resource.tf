resource "airbyte_source_linkedin_ads" "my_source_linkedinads" {
  configuration = {
    account_ids = [
      4
    ]
    ad_analytics_reports = [
      {
        name             = "...my_name..."
        pivot_by         = "MEMBER_JOB_TITLE"
        time_granularity = "MONTHLY"
      }
    ]
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
      o_auth20 = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    lookback_window = 3
    start_date      = "2021-05-17"
  }
  definition_id = "6103991f-50f8-4ff5-a7c2-f07535bd7995"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a6809f5e-180e-4fd3-8ff7-576172bbda48"
}